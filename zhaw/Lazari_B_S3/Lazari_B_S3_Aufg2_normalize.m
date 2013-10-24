function normalized = Lazari_B_S3_Aufg2_normalize(vk, nk, mantisse, baseNew)
% Erzeugt eine normalisierten vektor aus den zwei eingangsvektoren
% Die Länge des Vektors ist mantisse + exponent
    normalized = zeros(1, mantisse);
    exponent = 0;
    [void colsVK] = size(vk);
    [void colsNK] = size(nk);
    
    % Fall I: Der VK-Anteil passt nicht/gerade in die Mantisse
    if(colsVK >= mantisse)
        while(exponent < colsVK)
            exponent = exponent + 1;
            normalized(exponent) = vk(exponent);
        end
    end
    
    % Fall II: Es gibt keinen VK-Anteil
    if(colsVK == 0 && colsNK > 0)
        stellen = 0;
        stelle = 1;
        % Finde die erste von null verschiedene stelle
        while(stellen < mantisse)  
            if(nk(stelle) == 0)
                stelle = stelle + 1;
                exponent = exponent - 1;
            else
                break;
            end
        end
        norm_stelle = 1;        
        while(stellen < mantisse)
            if(colsNK > stelle)
                normalized(norm_stelle) = nk(stelle);
            end
            norm_stelle = norm_stelle +1;
            stelle = stelle + 1;
        end
    end
    
    % Fall III: VK und NK-Anteil
    if(colsVK < mantisse)
        stelle = 1;
        while(stelle < colsVK) 
            normalized(stelle) = vk(stelle);
            stelle = stelle + 1;
            exponent = exponent + 1;
        end
        nk_stelle = 1;
        while(stelle < mantisse)
            normalized(stelle) = nk(nk_stelle);
            stelle = stelle + 1;
            nk_stelle = nk_stelle + 1;
        end
    end
    
    % Exponent einfügen
    v_exponent = Lazari_B_S3_Aufg2_intToBase(exponent, baseNew);
    result = [normalized, v_exponent];
    normalized = result;
end
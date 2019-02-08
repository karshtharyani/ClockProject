function toggleTheme(hObj, eventData)
    if strcmp(hObj.String, 'Dark')
        hObj.String = 'Light';
    else
        hObj.String = 'Dark';
    end
end

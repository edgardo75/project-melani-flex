function copyT(s)  
{  
    if(window.clipboardData)  
    {  
    window.clipboardData.setData('text',s);  
    }  
    else  
    {  
        var clipboarddiv=document.getElementById('divclipboardswf');  
    if(clipboarddiv==null)  
    {  
       clipboarddiv=document.createElement('div');  
           clipboarddiv.setAttribute("name", "divclipboardswf");  
       clipboarddiv.setAttribute("id", "divclipboardswf");  
       document.body.appendChild(clipboarddiv);  
    }  
        clipboarddiv.innerHTML='';  
    }  
    alert('The text is copied to your clipboard...');  
    return false;  
}
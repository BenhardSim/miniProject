function getXMLHTTPRequest(){
    if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }else{
        return new ActiveXObject('Microsoft.XMLHTTP');
    }
}


function callAjax(url,inner){
    let xmlhttp = getXMLHTTPRequest();
    xmlhttp.open('GET',url,true);
    xmlhttp.onreadystatechange = function() {
        document.getElementById(inner).innerHTML = '<p>Loading...</p>';
        if((xmlhttp.readyState == 4) && (xmlhttp.status == 200)){
            document.getElementById(inner).innerHTML = xmlhttp.responseText;
        }
        return false;
    }
    xmlhttp.send(null);
}

function getCity(kode_prov){
    console.log('test');
    let inner = 'drop_down_city';
    let url = 'get_city.php?id=' + kode_prov;
    if(kode_prov != ''){
        callAjax(url,inner);
    }else{
        document.getElementById(inner).innerHTML = '';
    }
}
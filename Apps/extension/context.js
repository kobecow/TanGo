/*
document.addEventListener("selectionchange", function(event) {
    const str = window.getSelection().toString();
    console.log("HFGEIUGIS")
    console.log(str)
  //    window.postMessage({ keyword: str }, "*");
  });
*/


const highlightHandler = (e) =>{
    let text = document.getSelection().toString();
    if (text != ''){
        text = text.toLowerCase()
        console.log(text)

        // trimming
        // , . first space and last space 
        
        text = text.trimStart()
        text = text.trimEnd()
        text = text.replace(/[,.]$/, "")


        console.log(text)
        const patt = /[0-9]/;
        if(! patt.test(text)){
            console.log(text)

        }

    }
    
}

document.onmouseup = highlightHandler;
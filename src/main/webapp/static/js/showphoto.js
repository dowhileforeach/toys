    function Filmstrip(){
        this.ePicture = document.getElementById('fsScreen');
        this.ePrev = document.getElementById('fsControl_prev');
        this.eNext = document.getElementById('fsControl_next');
        var eLinks = document.getElementById('fsLinks');
        this.aeLink = eLinks.getElementsByTagName('A');
        this.show_picture = function( sBackground, iWidth, iHeight ){
            this.ePicture.style.backgroundImage = "url(" + sBackground + ")";
            if( iWidth )
                this.ePicture.style.width = iWidth;
            if( iHeight )
                this.ePicture.style.height = iHeight;
            this.set_current( sBackground );
        }
        this.set_current = function( sHref ){
            for( var i = 0 ; i < this.aeLink.length ; i++ ){
                if( this.aeLink[i].href.match( new RegExp( sHref + "$" ) ) ){
                    this.aeLink[i].className += " current";
                    this.ePrev.className = this.ePrev.className.replace( /\s+disabled/g, "" );
                    this.eNext.className = this.eNext.className.replace( /\s+disabled/g, "" );
                    if( i === 0 ){
                        this.ePrev.className += " disabled";
                        this.ePrev.onclick = function(){};
                        this.eNext.onclick = this.aeLink[i + 1].onclick;
                    }else if( i === this.aeLink.length - 1 ){
                        this.eNext.className += " disabled";
                        this.eNext.onclick = function(){};
                        this.ePrev.onclick = this.aeLink[i - 1].onclick;
                    }else{
                        this.eNext.onclick = this.aeLink[i + 1].onclick;
                        this.ePrev.onclick = this.aeLink[i - 1].onclick;
                    }
                }else{
                    this.aeLink[i].className = this.aeLink[i].className.replace( /\s*current/g, "" );
                }
            }
        }
    }
    var oFilmstrip = new Filmstrip();
    function Show_picture( sHref, iWidth, iHeight ){
        oFilmstrip.show_picture( sHref, iWidth, iHeight );
        return false;
    }
    oFilmstrip.aeLink[0].onclick();
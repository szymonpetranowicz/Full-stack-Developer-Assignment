$('#add').fadeIn(0);
$('#newrow').fadeOut(0);
$('#back').fadeOut(0);
$('#edit_row').fadeOut(0);
$('#delete_row').fadeOut(0);



$(document).ready(function(){

    for (let index = 0; index < document.getElementsByClassName('btn btn-warning').length; index++) {

        const super_id = document.getElementsByName('edit')[index]['id'];
        const edit = document.getElementsByName('edit')[index];
        const del = document.getElementsByName('delete')[index];
        const check = document.getElementsByName('check')[index];

        edit.addEventListener("click", function(){
            window.location.href = "basse.php?id="+index+"&edit="+1+"&super="+super_id;

            });

        del.addEventListener("click", function(){
            window.location.href = "basse.php?id="+index+"&delete="+1+"&super="+super_id;
    
            });

        check.addEventListener("click", function(){
            window.location.href = "basse.php?id="+index+"&check="+1+"&super="+super_id;
            });    
        
    };

    $('#add').on('click', function(){
        $('#add').fadeOut(600);
        $('#newrow').fadeIn(600);
    });
    $('#decline').on('click', function(){
        $('#add').fadeIn(600);
        $('#newrow').fadeOut(600);
    });


    function $_GET(param) {
        var vars = {};
        window.location.href.replace( location.hash, '' ).replace( 
            /[?&]+([^=&]+)=?([^&]*)?/gi, // regexp
            function( m, key, value ) { // callback
                vars[key] = value !== undefined ? value : '';
            }
        );
    
        if ( param ) {
            return vars[param] ? vars[param] : null;	
        }
        return vars;
    }
    


    if ($_GET('id') !== null & $_GET('edit') == 1) {

        var index = parseInt($_GET('id'))
        var title = document.getElementsByClassName('title')[index].innerText
        var note = document.getElementsByClassName('note')[index].innerText

        
        document.getElementsByTagName('tr')[index+1].innerHTML = document.getElementById('edit_row').innerHTML
        document.getElementById('edit_row').innerHTML = ''
        document.getElementsByTagName('textarea')[0].innerText = title
        document.getElementsByTagName('textarea')[1].innerText = note
        document.getElementById('edit_created').innerText = created
        document.getElementById('edit_modified').innerText = modified

        document.getElementsByName('decline_edit')[0].addEventListener("click", function(){
            window.location.href = "basse.php?";

            });
        
        

        
      }else if ($_GET('id') !== null & $_GET('delete') == 1){

        var index = parseInt($_GET('id')) 
        var title = document.getElementsByClassName('title')[index].innerText
        var note = document.getElementsByClassName('note')[index].innerText



        document.getElementsByTagName('tr')[index+1].innerHTML = document.getElementById('delete_row').innerHTML
        document.getElementById('delete_row').innerHTML = ''
        document.getElementById('delete_title').innerText = title
        document.getElementById('delete_note').innerText = note


        document.getElementsByName('decline_delete')[0].addEventListener("click", function(){
            window.location.href = "basse.php?";

            });
      }else if ($_GET('id') !== null & $_GET('check') == 1){
        $('#add').fadeOut(0);
        $('#back').fadeIn(0);
      }

});



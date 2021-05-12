<?php 


function Connect(){
    $connection = mysqli_connect('localhost','root','','simple_table');
    if(!$connection){

    echo 'Database connection failed';
    
    };
    return $connection;

}

function Pull($connection){

    $query_out = 'SELECT * FROM `row`;';
    $result_out = mysqli_query($connection,$query_out);
    return $result_out;
    };
function byTitle($connection){

    $query_out = 'SELECT * FROM `row`ORDER BY Title;';
    $result_out = mysqli_query($connection,$query_out);
    return $result_out;
    };
function byNote($connection){

    $query_out = 'SELECT * FROM `row` ORDER BY Note;';
    $result_out = mysqli_query($connection,$query_out);
    return $result_out;
    };
function byCreated($connection){

    $query_out = 'SELECT * FROM `row` ORDER BY Created;';
    $result_out = mysqli_query($connection,$query_out);
    return $result_out;
    };
function byModified($connection){

    $query_out = 'SELECT * FROM `row` ORDER BY Modified;';
    $result_out = mysqli_query($connection,$query_out);
    return $result_out;
    };   

function archive($connection){

        $id = $_GET['super'];
        $query_out = "SELECT * FROM `archive` WHERE `id` = \"$id\";";
        $result_out = mysqli_query($connection,$query_out);
        if($result_out){
          
        }else{
            echo $query_out;
        };
           
        return $result_out;
        };  

function Create($connection){
        
        
        if(isset($_POST['accept'])){
        
            $title = $_POST['title'];
            $note = $_POST['note'];
            $query = 'INSERT INTO `row`(`Title`, `Note`) VALUES ('."'".$title."'".','."'".$note."'".');';
            $result_in = mysqli_query($connection, $query);
            if($result_in){
          
            }else{
                echo $query;
            };
                
        
        };
    };


function Edit($connection){
        
        
    if(isset($_POST['accept_edit'])){

        $id = $_GET['super'];
        $title = $_POST['edit_title'];
        $note = $_POST['edit_note'];
        $query = "UPDATE `row` SET `Title`=\"$title\",`Note`=\"$note\" WHERE `id`=\"$id\";";
        $result_in = mysqli_query($connection, $query);
        if($result_in){
            header("Location: basse.php"); 

        }else{
            echo $query;

        };
        
    };
    };

    function Delete($connection){
        
        
        if(isset($_POST['accept_delete'])){
    
            $id = $_GET['super'];
            $query = "DELETE FROM `row` WHERE `id`=\"$id\";";
            $result_in = mysqli_query($connection, $query);
            if($result_in){
                header("Location: basse.php"); 
    
            }else{
                echo $query;
    
            };
            
        };
        };
if(isset($_POST['accept_edit'])){

    Edit(Connect());
};
if(isset($_POST['accept'])){

    Create(Connect());
};
if(isset($_POST['accept_delete'])){
    Delete(Connect());

};


if (isset($_POST['by_title'])) {
    $result_out = byTitle(Connect());
    
}elseif(isset($_POST['by_note'])){
    $result_out = byNote(Connect());

}elseif(isset($_POST['by_created'])){
    $result_out = byCreated(Connect());
    
}elseif(isset($_POST['by_modified'])){
    $result_out = byModified(Connect());
    
}elseif(isset($_GET['check'])){
    $result_out = archive(Connect());
    if (isset($_POST['back'])) {
        header("Location: basse.php");
    }
    
}else{
    $result_out = Pull(Connect());
};



?>


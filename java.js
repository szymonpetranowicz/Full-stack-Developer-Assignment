
const newRow = (id) => '<tr id="' + id + '" onclick="" class= "'+'border'+'" >' + $('tr')[1].innerHTML + '</tr>';
const newTable = (id) => '<table class="'+id+' table table-light table-striped">' + $('#edits').html() + '</table>';
var rows = {}
var id = 1;
var ed = 0;
var ve = 0

$('#editrow').fadeOut(0)
$('#edits').fadeOut(0)
$('h1').eq(1).fadeOut(0)
$('#newrow').fadeOut(0);
$('#first').fadeOut(0);
$('#add').on('click', function () {
  $('#addnewrow').fadeOut(0);
  $('#newrow').fadeIn(0);
});

$('#decline').on('click', function () {
  $('#addnewrow').fadeIn(0);
  $('#newrow').fadeOut(0);
  $('textarea')[1].value = '';
  $('textarea')[0].value = '';

})

function time(){
  var current = new Date()
  return current.toGMTString() ;
}


function Row(title, note, v, created,modified) {
  return {
    title: title,
    note: note,
    created:created,
    modified:modified,
    v:v
  }
}
const editRow = (id) => {
  // $('#'+id).fadeOut(0);
  $('#addnewrow').fadeOut(0);
  const copy = $('#'+id).html()
  $('#'+id).html($('#editrow').html())
  $('textarea')[0].value = rows[id+rows[id]['v']]['title']
  $('textarea')[1].value = rows[id+rows[id]['v']]['note']
  rows[id]['v'] += 0.1
  if ($('textarea')[0].value != '' && $('textarea')[1].value!= '') {
    $('#accepteedit').on('click',function(){
      console.log(id);
      console.log(Math.round([rows[id]['v']*10]));
      rows[id+rows[id]['v']] = new Row($('textarea')[0].value, $('textarea')[1].value,id+rows[id]['v'],rows[id]['created'],time());
      $('#'+id).html($('tr')[1].innerHTML)
      document.getElementsByClassName(id)[0].getElementsByTagName('tbody')[0].innerHTML += newRow(id)
      document.getElementsByClassName(id)[0].getElementsByClassName('action')[Math.round(rows[id]['v']*10)].innerHTML = '';
      document.getElementsByClassName(id)[0].getElementsByClassName('title')[Math.round(rows[id]['v']*10)].textContent = rows[id+rows[id]['v']]['title'];
      document.getElementsByClassName(id)[0].getElementsByClassName('note')[Math.round(rows[id]['v']*10)].textContent = rows[id+rows[id]['v']]['note'];
      document.getElementsByClassName(id)[0].getElementsByClassName('created')[Math.round(rows[id]['v']*10)].textContent = rows[id+rows[id]['v']]['created' ];
      document.getElementsByClassName(id)[0].getElementsByClassName('modified')[Math.round(rows[id]['v']*10)].textContent = rows[id+rows[id]['v']]['modified'];
      document.getElementsByTagName('table')[0].getElementsByClassName('title')[id].textContent= rows[id+rows[id]['v']]['title'];
      document.getElementsByTagName('table')[0].getElementsByClassName('note')[id].textContent= rows[id+rows[id]['v']]['note'];
      document.getElementsByTagName('table')[0].getElementsByClassName('created')[id].textContent= rows[id+rows[id]['v']]['created'];
      document.getElementsByTagName('table')[0].getElementsByClassName('modified')[id].textContent= rows[id+rows[id]['v']]['modified'];
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[0].setAttribute("onclick",'editRow('+ id +')');
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[1].setAttribute("onclick",'deleteRow('+ id +')');
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[2].setAttribute("onclick",'historyRow('+ id +')');
      document.getElementsByClassName(id)[0].setAttribute("onclick",'backRow('+ id +')');
      $('#addnewrow').fadeIn(0);

    console.log(rows);

  })}else {
    alert('Title or note is null')
  }
  $('#declineedit').on('click',function(){
  $('#'+id).html(copy)
  rows[id]['v'] -= 0.1
  console.log(rows)
  })
}
const deleteRow = (id) => {
  $('#'+id).fadeOut(0);
  console.log(rows);
}
const historyRow = (id) =>{
  $('table').eq(0).fadeOut(0);
  $('h1').eq(0).fadeOut(0);
  $('table').eq(id+1).fadeIn(0);
  $('h1').eq(1).fadeIn(0);

}
const backRow = (id) =>{
  $('table').eq(0).fadeIn(0)
  $('h1').eq(0).fadeIn(0)
  $('table').eq(id+1).fadeOut(0)
  $('h1').eq(1).fadeOut(0)
}
const shineLikeADiamond = (id) =>{

}
$(document).ready(function(){
var a = 1
for (var i = 0; i < a; i++) {
  $('#accept').on('click',function work() {
    if ($('textarea')[0].value != '' && $('textarea')[1].value!= '') {
      $('#addnewrow').fadeIn(0);
      $('#newrow').fadeOut(0);
      $('#tbody').append(newRow(id));
      $('.edits').append(newTable(id));
      document.getElementsByClassName(id)[0].getElementsByTagName('tbody')[0].innerHTML += newRow(id)
      rows[id] = new Row($('textarea')[0].value, $('textarea')[1].value,0,time(),time());
      document.getElementsByTagName('table')[0].getElementsByClassName('title')[id].textContent= rows[id]['title'];
      document.getElementsByTagName('table')[0].getElementsByClassName('note')[id].textContent= rows[id]['note'];
      document.getElementsByTagName('table')[0].getElementsByClassName('created')[id].innerHTML= rows[id]['created']
      document.getElementsByTagName('table')[0].getElementsByClassName('modified')[id].textContent= rows[id]['modified']
      $('textarea')[1].value = '';
      $('textarea')[0].value = '';
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[0].setAttribute("onclick",'editRow('+ id +')');
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[1].setAttribute("onclick",'deleteRow('+ id +')');
      document.getElementsByTagName('table')[0].getElementsByClassName('action')[id].getElementsByTagName('button')[2].setAttribute("onclick",'historyRow('+ id +')');
      document.getElementsByClassName(id)[0].setAttribute("onclick",'backRow('+ id +')');
      document.getElementsByClassName(id)[0].getElementsByClassName('title')[0].textContent= rows[id]['title'];
      document.getElementsByClassName(id)[0].getElementsByClassName('note')[0].textContent= rows[id]['note'];
      document.getElementsByClassName(id)[0].getElementsByClassName('action')[0].innerHTML = '';
      document.getElementsByClassName(id)[0].getElementsByClassName('created')[0].textContent = rows[id]['created'];
      document.getElementsByClassName(id)[0].getElementsByClassName('modified')[0].textContent = rows[id]['modified'];
      $('table').eq(id+1).fadeOut(0);

      id++;
      ed++;
    }else{
      alert('Title or note is null')
      a++

    }
})

  console.log(rows);
}})

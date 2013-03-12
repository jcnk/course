$(function(){
  $('.btn').on('click',function(e){
    $.get('/ajax', function(data) {
      $('.result').json(data);
      console.log('Load was performed.');
    });
    e.preventDefault();
  });
});
window.addEventListener('load', function(){

  const pullDown5 = document.getElementById("event_start_time_5i")
  var options = document.querySelectorAll("#event_start_time_5i option")
  pullDown5.addEventListener('change', function(){
    var index = this.selectedIndex;
    options[ index ].value 
    options[ index ].innerHTML
    console.log(index)
  })

  pullDown5.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#05FBFF;")
  })

  pullDown5.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#05FBFF;")
  })

  pullDown5.addEventListener('click', function() {
  })

  const pullDown1 = document.getElementById("event_start_time_1i")

  pullDown1.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#05FBFF;")
  })

  pullDown1.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#05FBFF;")
  })

  pullDown1.addEventListener('click', function() {
  })

  const pullDown2 = document.getElementById("event_start_time_2i")

  pullDown2.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#05FBFF;")
  })

  pullDown2.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#05FBFF;")
  })

  pullDown2.addEventListener('click', function() {
  })

  const pullDown3 = document.getElementById("event_start_time_3i")

  pullDown3.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#05FBFF;")
  })

  pullDown3.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#05FBFF;")
  })

  pullDown3.addEventListener('click', function() {
  })

  const pullDown4 = document.getElementById("event_start_time_4i")

  pullDown4.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#05FBFF;")
  })

  pullDown4.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#05FBFF;")
  })

  pullDown4.addEventListener('click', function() {
  })

})


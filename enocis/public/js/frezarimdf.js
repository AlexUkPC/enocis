let difference_color={}
let oc={}
let id_eqv={}
let slideIndex = 1
window.onload = function() {

  let slides = document.getElementsByClassName('mySlides');
  for (j = 0; j < slides.length; j++) {
    slides[j].id += `slide-${j}`;
    id_eqv[slides[j].dataset.id] = j+1;
    let original_color=[];
    let i = 0;
    do {
      i = i + 1;
      var svg = Array.from(document.querySelectorAll(`#slide-${j}  .cls-${i}`))
      if (svg[0]){
        var element = window.getComputedStyle(svg[0]);   
        let red = element.getPropertyValue('fill').replace('rgb(', '').replace(')', '').split(', ')[0];
        let green = element.getPropertyValue('fill').replace('rgb(', '').replace(')', '').split(', ')[1];
        let blue = element.getPropertyValue('fill').replace('rgb(', '').replace(')', '').split(', ')[2];
        if (i==1) {
          original_color.push(red, green, blue);
          oc["slide-"+j] = original_color;
        }
        else 
        difference_color["cls-"+i+"_slide-"+j] = ([oc["slide-"+j][0] - red, oc["slide-"+j][1] - green, oc["slide-"+j][2] - blue]);
      }
      else {
      }
    } while (svg[0]);
  }
  let array = window.location.href.split('/');
  slideIndex=id_eqv[array[array.length-1]]
  showSlides(slideIndex);
  changeImage('load', '#E9E5CE');
  openTab('load', 'RAL');
}
const hexToRgb = hex =>
hex.replace(/^#?([a-f\d])([a-f\d])([a-f\d])$/i
            ,(m, r, g, b) => '#' + r + r + g + g + b + b)
  .substring(1).match(/.{2}/g)
  .map(x => parseInt(x, 16))
  
const rgbToHex = (r, g, b) => '#' + [r, g, b].map(x => {
  const hex = x.toString(16)
  return hex.length === 1 ? '0' + hex : hex
}).join('')

function changeSVG(red, green, blue, cls, slide){
  const elem = document.querySelectorAll(`#${slide}  .${cls}`);
  Array.from(elem).forEach(myFunction)
  function myFunction(t) {
    t.style.fill = `rgb(${red}, ${green}, ${blue})`;
  }
}

function changeImage(evt, hex){
  const slides = document.getElementsByClassName('mySlides');
  for (i = 0; i < slides.length; i++) {
    let red = hexToRgb(hex)[0]
    let green = hexToRgb(hex)[1]
    let blue = hexToRgb(hex)[2]
    changeSVG(red, green, blue, "cls-1", `slide-${i}`)
    for(var key in difference_color) {
      var value = difference_color[key];
      if (key.split('_')[1]==`slide-${i}`)
      {
        changeSVG(red-value[0], green-value[1], blue-value[2], key.split('_')[0], key.split('_')[1])
      }
    } 
  }
  colors = document.getElementsByClassName("color");
  for (i = 0; i < colors.length; i++) {
    if ( evt != 'load' ){ 
      colors[i].className = colors[i].className.replace(" clicked", ""); 
    }
  }
  if ( evt != 'load' ){ 
    evt.currentTarget.className += " clicked";
    change_color_text(evt.currentTarget)
  }
}
function change_color_text(evt) {
  let col = document.getElementById('frezare_color');
  col.innerHTML = evt.querySelector('span.color_code').innerText
}
function openTab(evt, tabName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    if ( evt != 'load' ){ 
      tablinks[i].className = tablinks[i].className.replace(" active", ""); 
    }
  }
  document.getElementById(tabName).style.display = "flex";
  if ( evt != 'load' ){
    evt.currentTarget.className += " active";
  }
  load_all_btn = document.getElementById('load_all').className;
  if (tabName=='NCS'){
    if (load_all_btn.includes('active')) {
      if (!load_all_btn.includes('ncs') && load_all_btn.includes('ral')){
        document.getElementById('load_all').className = load_all_btn.replace("active", " ");
      }
    }
    else if (load_all_btn.includes('ncs')&& !load_all_btn.includes('ral')){
      document.getElementById('load_all').className += " active";
    }
  }
  else {
    if (load_all_btn.includes('active')) {
      if (load_all_btn.includes('ncs') && !load_all_btn.includes('ral')){
        document.getElementById('load_all').className = load_all_btn.replace("active", " ");
      }
    }
    else if (load_all_btn.includes('ral')&& !load_all_btn.includes('ncs')){
      document.getElementById('load_all').className += " active";
    }
  }

}
function show_all_colors(evt, btn) { 
  if (document.querySelectorAll('.tablinks.active')[0].textContent == 'PALETAR RAL'){
  
    if (document.getElementById('load_all').className.includes('active') && document.getElementById('load_all').className.includes('ral')){
      colors = document.querySelectorAll('.color.ral');
      for (i = 0; i < colors.length; i++) {
        colors[i].className = colors[i].className.replace("active", " ");
        if (document.getElementById('load_all').className.includes('ncs')){
          evt.currentTarget.className = "ncs"
        }
        else {
          evt.currentTarget.className = ""
        }
      }
    }
    else{
      colors = document.querySelectorAll('.color.ral');
      for (i = 0; i < colors.length; i++) {
        colors[i].className += " active";
      }
      evt.currentTarget.className += " active ral";
    }
  }
  else{
    if (document.getElementById('load_all').className.includes('active') && document.getElementById('load_all').className.includes('ncs')){
      colors = document.querySelectorAll('.color.ncs');
      for (i = 0; i < colors.length; i++) {
        colors[i].className = colors[i].className.replace("active", " ");
        if (document.getElementById('load_all').className.includes('ral')){
          evt.currentTarget.className = "ral"
        }
        else {
          evt.currentTarget.className = ""
        }
      }
      
    }
    else{
      colors = document.querySelectorAll('.color.ncs');
      for (i = 0; i < colors.length; i++) {
        colors[i].className += " active";
      }
      evt.currentTarget.className += " active ncs";
    }
  }
 }
function add_to_fav(hex) {  
  fav_colors = document.getElementsByClassName('fav_col');
  for (i = 0; i < fav_colors.length; i++) {
    hex_arr = hexToRgb(hex);
    if (getComputedStyle(fav_colors[i]).backgroundColor == 'rgb(238, 238, 238)'){
      for (j = 0; j < fav_colors.length; j++) {
        if ( getComputedStyle(fav_colors[j]).backgroundColor == `rgb(${hex_arr[0]}, ${hex_arr[1]}, ${hex_arr[2]})`){
          return
        }
      }
      fav_colors[i].style.backgroundColor = hex;
      for (j = 0; j < fav_colors.length; j++) {
        fav_colors[j].className = fav_colors[j].className.replace(" last_changed", "").replace(" clicked", "");
      }
      fav_colors[i].className += ' last_changed clicked';
      return
    }
    else if( getComputedStyle(fav_colors[i]).backgroundColor == `rgb(${hex_arr[0]}, ${hex_arr[1]}, ${hex_arr[2]})`){ 
      for (j = 0; j < fav_colors.length; j++) {
        fav_colors[j].className = fav_colors[j].className.replace(" clicked", "");
      }   
      fav_colors[i].className += ' clicked';
      return
    }
  }
  for (j = 0; j < fav_colors.length; j++) {
    if (fav_colors[j].className.includes('last_changed')) {
      for (i = 0; i < fav_colors.length; i++) {
        fav_colors[i].className = fav_colors[i].className.replace(" last_changed", "").replace(" clicked", "");
      }
      if (j==7){
        fav_colors[0].style.backgroundColor = hex;
        fav_colors[0].className += ' last_changed clicked';
        return
      }
      else {
        fav_colors[j+1].style.backgroundColor = hex;
        fav_colors[j+1].className += ' last_changed clicked';
        return
      }
    }
  }
}
function change_col_to_fav(evt){
  fav_col_bg = evt.currentTarget.style.backgroundColor.replace('rgb(', '').replace(')', '').split(', ')
  changeImage('load', rgbToHex(parseInt(fav_col_bg[0]),parseInt(fav_col_bg[1]),parseInt(fav_col_bg[2])))
  fav_colors = document.getElementsByClassName("fav_col");
  for (i = 0; i < fav_colors.length; i++) {
    if ( evt != 'load' ){ 
      fav_colors[i].className = fav_colors[i].className.replace(" clicked", ""); 
    }
  }
  if ( evt != 'load' && evt.currentTarget.style.backgroundColor != "" ){ 
    evt.currentTarget.className += " clicked";
  }
  colors = document.getElementsByClassName("color");
  for (i = 0; i < colors.length; i++) {
    if ( evt != 'load' ){ 
      if (colors[i].style.backgroundColor==evt.currentTarget.style.backgroundColor){
        if (!colors[i].className.includes('clicked'))
        {
          colors[i].className += " clicked";
        }
        change_color_text(colors[i])
      }
      else {
        colors[i].className = colors[i].className.replace(" clicked", "");
      }
    }
  }
  
}
function remove_from_fav(evt) {
  evt.currentTarget.parentNode.style.backgroundColor = "";
}


function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}


function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
  var frezare_name = document.getElementsByClassName("frezare_name");
  for (i = 0; i < frezare_name.length; i++) {
    frezare_name[i].style.display = "none";  
  }
  frezare_name[slideIndex-1].style.display = "inline-block";  
}
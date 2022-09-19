
/** .container에 클릭시 toggle 기능 active로 상태가 바뀜 */
const accordion = document.getElementsByClassName('container');

for (i=0; i<accordion.length; i++) {
  accordion[i].addEventListener('click', function () {
    this.classList.toggle('active')
  })
}
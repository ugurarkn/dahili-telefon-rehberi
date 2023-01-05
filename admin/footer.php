<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; 1954 - <?php echo date("Y");?> Erdemli Belediyesi Araştırma ve Geliştirme Müdürlüğü</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>


<!-- Bootstrap core JavaScript-->

<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
<script src="vendor/sweetalert/sweetalert2.all.min.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
    $("#sidebarToggle").trigger('click')
  });
</script>

<script type="text/javascript">
  function mesajgonder() {
    var mesaj = $("#mesaj-giris").val();
    if(mesaj.length==0){
      alert("Mesaj Alanı Boş Olamaz");
    } else {
     $.ajax({
      type: "POST",
      url:"islemler/ajax.php",
      data: "mesajekle=mesajekle&mesaj_detay="+mesaj
    })

     $("#mesaj-giris").val("");
   }


   
 }


 $(document).ready(function() {

  setInterval(function () {
    var mesajsayisi = $(".mesaj-sayisi[type=radio]:checked").val();
    $(".mesaj-alani").load("liste.php?sayi="+mesajsayisi);      
  },1750);

  $(document).keydown(function (tus) {
    if (tus.keyCode==13) {
      event.preventDefault();
      mesajgonder() 
    }
  });
});


 $(".mesaj-secenek-buton").click(function() {
  $("#mesaj-sayisi-alani").toggle('fast')
});

 $(".mesaj-gorunurluk").click(function() {
  $(".sag-alt-mesajlar").toggle('fast');
});
</script>

</body>

</html>

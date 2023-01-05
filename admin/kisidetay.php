<?php 
require 'header.php';
if (isset($_POST['kisi_id'])) {
	$sorgu=$db->prepare("SELECT * FROM kisiler WHERE kisi_id=:kisi_id");
	$sorgu->execute(array('kisi_id' => $_POST['kisi_id']));
	$kisicek=$sorgu->fetch(PDO::FETCH_ASSOC);
} else {
	header("location:index.php");
	exit;
}



?>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Kişi Bilgileri</h5>
				</div>
				<div class="card-body">
					<form action="islemler/ajax.php" method="POST" accept-charset="utf-8">
						<input type="hidden" name="kisi_id" value="<?php echo $_POST['kisi_id'] ?>">

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Adı ve Soyadı</label>
								<input disabled="" value="<?php echo $kisicek['kisi_isim'] ?>" type="text" name="kisi_isim" placeholder="Ad ve Soyad" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Dahili No</label>
								<input disabled="" value="<?php echo $kisicek['kisi_dahili'] ?>" type="mail" name="kisi_dahili" placeholder="Dahili No" class="form-control">
							</div>
						</div>


						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Cep Telefonu</label>
								<input disabled="" value="<?php echo $kisicek['kisi_cep'] ?>" type="text" name="kisi_cep" placeholder="Cep Telefonu" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Bağlı Müdürlük</label>
								<input disabled="" value="<?php echo $kisicek['kisi_mudurluk'] ?>" type="text" name="kisi_mudurluk" placeholder="Bağlı Müdürlük" class="form-control">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Çalıştığı Birim</label>
								<input disabled="" value="<?php echo $kisicek['kisi_birim'] ?>" type="text" name="kisi_birim" placeholder="Çalıştığı Birim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Mesleği / Görevi</label>
								<input disabled="" value="<?php echo $kisicek['kisi_meslek'] ?>" type="text" name="kisi_meslek" placeholder="Mesleği / Görevi" class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 form-group">
							<textarea disabled="" name="kisi_detay" class="form-control" id="editor"><?php echo $kisicek['kisi_detay'] ?></textarea>
						</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<?php require 'footer.php'; ?>
<script src="vendor/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	CKEDITOR.replace("editor");
</script>
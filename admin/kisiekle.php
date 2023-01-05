<?php 
require 'header.php';
?>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Kişi Ekleme</h5>
				</div>
				<div class="card-body">
					<form action="islemler/ajax.php" method="POST" accept-charset="utf-8">
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Adı ve Soyadı</label>
								<input type="text" name="kisi_isim" placeholder="Ad ve Soyad" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Dahili No</label>
								<input type="mail" name="kisi_dahili" placeholder="Dahili No" class="form-control">
							</div>
						</div>


						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Cep Telefonu</label>
								<input type="text" name="kisi_cep" maxlength="11" value="05" placeholder="Cep Telefonu" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Bağlı Müdürlük</label>
								<input type="text" name="kisi_mudurluk" placeholder="Bağlı Müdürlük" class="form-control">
							</div>
						</div>


						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Çalıştığı Birim</label>
								<input type="text" name="kisi_birim" placeholder="Çalıştığı Birim" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<label>Mesleği / Görevi</label>
								<input type="text" name="kisi_meslek" placeholder="Mesleği / Görevi" class="form-control">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-12 form-group">
								<textarea name="kisi_detay" class="form-control" id="editor"></textarea>
							</div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg" name="kisiekle">Kaydet</button>
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
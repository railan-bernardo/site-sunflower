
        <?php $v->layout("_theme"); ?>
    	<div class="container">
             <header class="title-header">
                <h1>Presentei quem você ama!</h1>
             </header>

             <section class="content-article">
                 <?php foreach($products as $product): ?>
                      <article>
                          <div class="box-image">
                          
                            <img src="<?= url("storage/{$product->cover}"); ?>" alt="<?= $product->title; ?>" title="<?= $product->title; ?>">
                            
                          </div>
                          <?php foreach ($site as $value){ ?>
                          <a target="_blank" href="https://web.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="btn-product desktop" title="Baldes Personalizados"><?= $product->title; ?></a>
                          <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="btn-product smartphone" title="Baldes Personalizados"><?= $product->title; ?></a>
                      <?php } ?>
                      </article>
                 <?php endforeach; ?>
             </section>
             <header class="title-header">
                <h1>POR QUE COMPRAR CONOSCO?</h1>
             </header>
        </div>
        <div class="opt-in-footer">
            <div class="container opt-flex">
                 <div class="items m-r">
                         <span class="fas fa-gift"></span>
                         <h2>Montagem <br>Personalizada</h2>
                 </div>
                 <div class="items m-r left">
                         <span class="fas fa-truck"></span>
                         <h2>Entrega <br>Rápida</h2>
                 </div>
                 <div class="items">
                         <span class="far fa-star"></span>
                         <h2>Produtos de <br>Alta Qualidade</h2>
                 </div>
            </div>
        </div>
        <?php foreach ($site as $value){ ?>
        <a target="_blank" href="https://web.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="float desktop">
            <img src="assets/images/float.png" alt="Whatssap">
        </a>

        <!-- vesão mobil -->
        <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $value->phone_wp; ?>&text=<?= $value->msg; ?>" class="float smartphone">
            <img src="assets/images/float.png" alt="Whatssap">
        </a>
        <?php } ?>
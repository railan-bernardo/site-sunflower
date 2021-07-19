
    <div class="container">
     <header class="title-header">
            <h1><?= $post->title; ?></h1>
    </header>
    <!-- header title -->

        <section class="content-article">
          <?php foreach($photos as $value): ?>
            <?php if($post->id == $value->id_about): ?>
            <article class="slide-gallery">
                <div class="box-image">
                    <a href="<?= url("/storage/{$value->cover_img}"); ?>" class="img-container">
                            <img src="<?= url("/storage/{$value->cover_img}"); ?>" alt="" title="">
                    </a>
                </div>
            </article>
          <?php endif; ?>
              <?php endforeach; ?>
        </section>
    </div>

  <script src="assets/js/jquery.js"></script>
   <script src="assets/js/lighbox.js"></script>

<script>
    (function() {
        var $gallery = new SimpleLightbox('.slide-gallery a', {});
    })();
   
</script>
</body>
</html>
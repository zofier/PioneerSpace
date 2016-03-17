$(function() {
  // アップロードするファイルを選択
  $('input[type=file]').on('change', function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $(this).parent().html('');
      return;
    }

    // 画像表示
    var previewImageTag = $(this).parent();

    var reader = new FileReader();
    reader.onload = function() {
      previewImageTag.css('background-image' , 'url(' + reader.result + ')');
      previewImageTag.css('background-size' , 'contain');
    }

    reader.readAsDataURL(file);
  });

  $('.image-upload-plus').on('click', function() {
    var hide = $('.hide').first();
    hide.removeClass('hide');
    hide.addClass('appear');
    if($('.appear').length === 3){
      $('.add_sub_image_form').remove();
  }});

  $('.proto-list').masonry({
    itemSelector: '.masonry-brick',
    columnWidth: 290,
    isFitWidth: true
  });

  var $container = $('.proto-list');
  // 全ての画像が読み込まれてから Masonry を初期化（イニシャライズ）
  $container.imagesLoaded( function() {
    $container.masonry();
  });
});

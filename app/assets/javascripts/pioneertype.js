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
      var hide_form = $('#hide_form').first();
      hide_form.removeAttr('id', 'hide_form');
      hide_form.addClass('appear_form');
      if($('.appear_form').length === 3){     //3枚目の画像まで出したらプラスを消す
        $('.add_sub_image_form').remove();
      }
    });
});

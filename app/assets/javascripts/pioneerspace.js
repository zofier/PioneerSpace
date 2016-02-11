$(function() {
  $('input[type=file]').after('<span></span>');

  // アップロードするファイルを選択
  $('input[type=file]').change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('div.user-image').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var img_src = $('<img style="position: absolute; top: 0; border-radius: 50%; left: 0; width: 100%; height: 100%;">').attr('src', reader.result);
      $('div.user-image').css('background-image', 'url()').html(img_src);
    }
    reader.readAsDataURL(file);
  });
});

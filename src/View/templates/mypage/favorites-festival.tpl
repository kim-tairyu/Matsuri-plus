<!DOCTYPE html>
<html lang="ja">
  <head>
    {include file=_HTML_HEAD_DIR}
  </head>
  <body>
    <!--header-->
    {include file=_HEADER_DIR}

    <!-- maincontents -->
    <div class="fevpage" id="myTapContent">
      <div class="fevpage-inner">
        <!--ページタイトル-->
        <div class="fevpage-title">
          <p>Festival Favorites</p>
        </div>
        <!--さらに中のwrap-->
        <!--レビュー順で表示のエリア-->
        <div class="tab-pane fade in active" id="recommend">
          <div class="flex">
            {foreach from=$favorite_fes item=festival}
            <div class="news_info_event_box">
              <a href="#" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
              <a href="{$SCRIPT_NAME}?type=festival&festival_id={$festival.festival_id}">
                <div class="news_box">
                  <div class="news_box1">
                    <img src="{_IMGS_SERVER_DIR}/{$festival.image}" class="event_image">
                  </div>
                  <div class="news_box2">
                    <h4 class="news_title">{$festival.festival_name_en}</h4>
                    <!--demoが表示される文章でお願いします-->
                    <div class="demo">{$festival.description_en}</div>
                    <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                    <div class="date_box">
                    <h6 class="date_big2"></h6>
                    <h6 class="date_big">{$festival.start_date}</h6>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            {foreachelse}
            <div>No Favorite Article!</div>
            {/foreach}
          </div>
        </div>
      </div>
    </div>

    <!--フッター（SP版では非表示になってる）-->
    {include file=_FOOTER_DIR}
  </body>
</html>

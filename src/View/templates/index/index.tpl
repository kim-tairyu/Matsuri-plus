<!DOCTYPE html>
<html lang="ja">
  <head>
    {include file=_HTML_HEAD_DIR}
  </head>
  <body>
    <!--header-->
    {include file=_HEADER_DIR}

    <!-- maincontents -->
    <div class="main_content">
      <div class="main_content_inner">
        <ul class="kategori col-md-12 col-xs-12 col-lg-12">
          <li class="col-md-2  col-xs-2 col-lg-2">
            <a href="#vote" data-toggle="tab" id="click1">VOTE</a>
          </li>
          <li class="col-md-2 col-xs-2 col-lg-2">
            <a href="#news" data-toggle="tab" id="click2">NEWS</a>
          </li>
          <li class="col-md-4 col-xs-4 active col-lg-4 ">
            <a href="#recommend" data-toggle="tab" id="click3">RECOMMEND</a>
          </li>
          <li class="col-md-2 col-xs-2 col-lg-2">
            <a href="#season" data-toggle="tab" id="click4">SEASON</a>
          </li>
          <li class="col-md-2 col-xs-2 col-lg-2">
            <a href="#area" data-toggle="tab" id="click5">AREA</a>
          </li>
        </ul>
        <!--index.php全体を囲むwrap-->
        <div class="tab-content col-xs-12 col-md-12 col-lg-12" id="myTapContent">
          <!--レビュー順で表示のエリア-->
          <div class="tab-pane fade in active" id="recommend">
            <!--タブ切り替え-->
            <div class="tab_wrap">
            <input id="tab1" type="radio" name="tab_btn" checked="checked">
            <input id="tab2" type="radio" name="tab_btn">
            <div class="tab_area">
              <div class="week_mon">
                <a href="#"><label class="tab1_label" for="tab1">WEEK</label></a>
                <a href="#" class="month2"><label class="tab2_label" for="tab2">MONTH</label></a>
              </div>
            </div>
            <!--main-->
            <div class="panel_area">
              <!--WEEKタブ-->
              <div id="panel1" class="tab_panel">
                <div class="flex">
                  {foreach from=$weekFestivals item=weekFestival}
                  <div class="news_info_event_box">
                    <a href="{$SCRIPT_NAME}?festival_id={$weekFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                    <a href="{$SCRIPT_NAME}?type=festival&festival_id={$weekFestival.festival_id}">
                      <div class="news_box">
                        <div class="news_box1">
                          <img src="{_IMGS_SERVER_DIR}/{$weekFestival.image}" class="event_image">
                        </div>
                        <div class="news_box2">
                          <h4 class="news_title">{$weekFestival.festival_name_en}</h4>
                          <!--demoが表示される文章でお願いします-->
                          <div class="demo">{$weekFestival.description_en}</div>
                          <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                          <div class="date_box">
                            <h6 class="date_big2">{$weekFestival.start_date}</h6>
                            <h6 class="date_big">{$weekFestival.end_date}</h6>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                  {foreachelse}
                  <div>No Festival Data!</div>
                  {/foreach}
                </div>
              </div>
              <!--MONTHタブ-->
              <div id="panel2" class="tab_panel">
                <div class="flex">
                  {foreach from=$monthFestivals item=monthFestival}
                  <div class="news_info_event_box">
                    <a href="{$SCRIPT_NAME}?festival_id={$monthFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                    <a href="{$SCRIPT_NAME}?type=festival&festival_id={$monthFestival.festival_id}">
                      <div class="news_box">
                        <div class="news_box1">
                          <img src="{_IMGS_SERVER_DIR}/{$monthFestival.image}" class="event_image">
                        </div>
                        <div class="news_box2">
                          <h4 class="news_title">{$monthFestival.festival_name_en}</h4>
                          <!--demoが表示される文章でお願いします-->
                          <div class="demo">{$monthFestival.description_en}</div>
                          <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                          <div class="date_box">
                            <h6 class="date_big2">{$monthFestival.start_date}</h6>
                            <h6 class="date_big">{$monthFestival.end_date}</h6>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                  {foreachelse}
                  <div>No Festival Data!</div>
                  {/foreach}
                </div>
              </div><!--MONTHタブ終わり-->
            </div><!--main終わり-->
          </div>
        </div>

          <!--投票機能エリア-->
          <div class="tab-pane fade" id="vote">
            投票を実装予定
          </div>
          <!--記事エリア-->
          <div class="tab-pane fade" id="news">
            <!--wrapのようなもの-->
            <!--記事1-->
            <div class="flex">
            {foreach from=$articles item=article}
            <div class="news_info_event_box">
                <a href="{$SCRIPT_NAME}?article_id={$article.article_id}&action=article_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
              <a href="{$SCRIPT_NAME}?type=article&article_id={$article.article_id}">
                <div class="news_box">
                  <div class="news_box1-1">
                    <img src="{_IMGS_SERVER_DIR}/{$article.image}" class="event_image">
                  </div>
                  <div class="news_box2">
                    <h4 class="news_title">{$article.article_title}</h4>
                    <div class="demo">{$article.text}</div>
                    <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                    <div class="date_box">
                      <h6 class="date_big2"></h6>
                      <h6 class="date_big">{$article.post_date}</h6>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            {foreachelse}
            <div>No Article Data!</div>
            {/foreach}
          </div>
        </div>

          <!--季節リア-->
        <div class="tab-pane fade" id="season">
            <!--タブ切り替え-->
        <div class="tab_wrap2">
            <input id="tabA" type="radio" name="tab_btn2" checked>
            <input id="tabB" type="radio" name="tab_btn2">
            <input id="tabC" type="radio" name="tab_btn2">
            <input id="tabD" type="radio" name="tab_btn2">
          <div class="tab_area2">
            <!--カテゴリ-->
            <div class="week_mon2">
              <a href="#"><label class="tabA_label" for="tabA">SPRING</label></a>
              <a href="#"><label class="tabB_label" for="tabB">SUMMER</label></a>
              <a href="#"><label class="tabC_label" for="tabC">AUTUMN</label></a>
              <a href="#"><label class="tabD_label" for="tabD">WINTER</label></a>
            </div>
          </div>

          <!--main-->
          <div class="panel_area2">
            <!--季節タブ-->
            <div id="panelA" class="tab_panel2">
            <!-- SPRING -->
            <div class="flex">
              {foreach from=$springFestivals item=springFestival}
              <div class="news_info_event_box">
                <a href="{$SCRIPT_NAME}?festival_id={$springFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                <a href="{$SCRIPT_NAME}?type=festival&festival_id={$springFestival.festival_id}">
                  <div class="news_box">
                    <div class="news_box1">
                      <img src="{_IMGS_SERVER_DIR}/{$springFestival.image}" class="event_image">
                    </div>
                    <div class="news_box2">
                      <h4 class="news_title">{$springFestival.festival_name_en}</h4>
                      <div class="demo">{$springFestival.description_en}</div>
                      <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                      <div class="date_box">
                        <h6 class="date_big2">{$springFestival.start_date}</h6>
                        <h6 class="date_big">{$springFestival.end_date}</h6>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              {/foreach}
            </div>
          </div>
          <!--季節タブ-->
          <div id="panelB" class="tab_panel2">
              <!-- SUMMER -->
              <div class="flex">
              {foreach from=$summerFestivals item=summerFestival}
              <div class="news_info_event_box">
                <a href="{$SCRIPT_NAME}?festival_id={$summerFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                <a href="{$SCRIPT_NAME}?type=festival&festival_id={$summerFestival.festival_id}">
                  <div class="news_box">
                    <div class="news_box1">
                      <img src="{_IMGS_SERVER_DIR}/{$summerFestival.image}" class="event_image">
                    </div>
                    <div class="news_box2">
                      <h4 class="news_title">{$summerFestival.festival_name_en}</h4>
                      <div class="demo">{$summerFestival.description_en}</div>
                      <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                      <div class="date_box">
                        <h6 class="date_big2">{$summerFestival.start_date}</h6>
                        <h6 class="date_big">{$summerFestival.end_date}</h6>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            {/foreach}
            </div>
        </div>
            <!--季節タブ-->
            <div id="panelC" class="tab_panel2">
              <!-- AUTUMN -->
              <div class="flex">
              {foreach from=$autumnFestivals item=autumnFestival}
              <div class="news_info_event_box">
                <a href="{$SCRIPT_NAME}?festival_id={$autumnFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                <a href="{$SCRIPT_NAME}?type=festival&festival_id={$autumnFestival.festival_id}">
                  <div class="news_box">
                    <div class="news_box1">
                      <img src="{_IMGS_SERVER_DIR}/{$autumnFestival.image}" class="event_image">
                    </div>
                    <div class="news_box2">
                      <h4 class="news_title">{$autumnFestival.festival_name_en}</h4>
                      <div class="demo">{$autumnFestival.description_en}</div>
                      <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                      <div class="date_box">
                        <h6 class="date_big2">{$autumnFestival.start_date}</h6>
                        <h6 class="date_big">{$autumnFestival.end_date}</h6>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              {/foreach}
              </div>
            </div>
              <!--季節タブ-->
              <div id="panelD" class="tab_panel2">
              <!-- WINTER -->
              <div class="flex">
              {foreach from=$winterFestivals item=winterFestival}
              <div class="news_info_event_box">
                <a href="{$SCRIPT_NAME}?festival_id={$winterFestival.festival_id}&action=festival_favorite" style="text-decoration:none;"><div class="fev_button-top"><p>♡</p></div></a>
                <a href="{$SCRIPT_NAME}?type=festival&festival_id={$winterFestival.festival_id}">
                  <div class="news_box">
                    <div class="news_box1">
                      <img src="{_IMGS_SERVER_DIR}/{$winterFestival.image}" class="event_image">
                    </div>
                    <div class="news_box2">
                      <h4 class="news_title">{$winterFestival.festival_name_en}</h4>
                      <div class="demo">{$winterFestival.description_en}</div>
                      <!--この下のdata_big2がアクセスカウンタでおねがいします-->
                      <div class="date_box">
                        <h6 class="date_big2">{$winterFestival.start_date}</h6>
                        <h6 class="date_big">{$winterFestival.end_date}</h6>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              {/foreach}
              </div>
            </div>
          </div><!--mainEND-->
        </div><!--tab_wrapEND-->
      </div>


          <!--地方エリア-->
          <div class="tab-pane fade" id="area">
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=hokkaido"><img src="{_IMGS_DIR}/hokkaidou.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=tohoku"><img src="{_IMGS_DIR}/tohoku.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=kinki"><img src="{_IMGS_DIR}/kinki.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=kanto"><img src="{_IMGS_DIR}/kanto.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=chubu"><img src="{_IMGS_DIR}/chubu.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=shikoku"><img src="{_IMGS_DIR}/shikoku.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=kyushu"><img src="{_IMGS_DIR}/kyushu.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=chugoku"><img src="{_IMGS_DIR}/chugoku.jpg" alt=""></a>
            </div>
            <div class="home_img">
              <a href="{$SCRIPT_NAME}?type=search&action=kensaku_tag&area=okinawa"><img src="{_IMGS_DIR}/okinawa.jpg" alt=""></a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--フッター（SP版では非表示になってる）-->
    {include file=_FOOTER_DIR}
    <script src="{_JS_DIR}/jquery.min.js"></script>
    <script src="{_JS_DIR}/bootstrap.min.js"></script>
    <script src="{_JS_DIR}/tab-change.js"></script>
  </body>
</html>

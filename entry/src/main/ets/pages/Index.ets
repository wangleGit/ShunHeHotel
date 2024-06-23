import { MinePage, MyGrid, MyNotice, MySwiper } from './CustomBuilders';

@Entry
@Component
struct Index {
  @State currentIndex: number = 0;
  // layoutOptions: GridLayoutOptions = {
  //   regularSize: [1, 1],
  //   onGetRectByIndex: ((index: number) => {
  //     if (index === 0) {
  //       console.info('awx index1 = ' + index);
  //       return [0, 0, 1, 2];
  //     } else if (index === 1) {
  //       console.info('awx index2 = ' + index);
  //       return [0, 1, 1, 2];
  //     } else if (index === 2) {
  //       console.info('awx index3 = ' + index);
  //       return [1, 0, 1, 1];
  //     } else if (index === 3) {
  //       console.info('awx index4 = ' + index);
  //       return [1, 1, 1, 1];
  //     } else {
  //       console.info('awx index5 = ' + index);
  //       return [1, 2, 1, 1];
  //     }
  //   })
  // }

  build() {
    Column() {
      Tabs() {
        TabContent() {
          Column() {
            MySwiper();
            MyNotice();

            Column() {
              MyGrid();
            }
            .padding(10)

            Row() {
              Column() {
                Image($r('app.media.home_meishi'))
                  .height(50)
                Text('美食餐饮')
              }
              .width('25%')
              .height(60)

              Column() {
                Image($r('app.media.home_hotel'))
                  .height(50)
                Text('集团酒店')
              }
              .width('25%')
              .height(60)

              Column() {
                Image($r('app.media.home_location'))
                  .height(50)
                Text('酒店位置')
              }
              .width('25%')
              .height(60)

              Column() {
                Image($r('app.media.home_custom'))
                  .height(50)
                Text('客人说')
              }
              .width('25%')
              .height(60)
            }
            .width('95%')
            .height(100)
            .backgroundColor('#E6E6E6')
            .borderRadius(10)
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .justifyContent(FlexAlign.Start)
          .height('100%')
        }
        .tabBar(this.tabBuilder('首页', 0, $r('app.media.home_page_selected'), $r('app.media.home_page_normal')))

        TabContent() {
          Image($r('app.media.vip_page'))
            .width('100%')
            .objectFit(ImageFit.Fill)
        }
        .tabBar(this.tabBuilder('会员', 1, $r('app.media.vip_selected'), $r('app.media.vip_normal')))

        TabContent() {
          MinePage();
        }
        .tabBar(this.tabBuilder('我的', 2, $r('app.media.mine_selected'), $r('app.media.mine_normal')))
      }
      .backgroundColor('#ffe2dede')
      .barPosition(BarPosition.End)
      .onChange((index: number) => {
        this.currentIndex = index;
      })
    }
    .height('100%')
    .width('100%')
  }

  @Builder
  tabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }
}
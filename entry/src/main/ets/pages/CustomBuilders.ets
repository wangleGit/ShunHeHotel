import { ListOfHotels } from './ListOfHotels'

@Builder
export function MinePage() {
  Column() {
    Image($r('app.media.mine_page_head'))
      .width('100%')
      .borderRadius(10)
  }
  .height('100%')
  .margin(10)
  .borderRadius(10)
  .justifyContent(FlexAlign.Start)

  Column() {
    Row() {
      Image($r('app.media.icon_order'))
        .height(25)
      Text('我的订单')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .onClick(() => {
      CommonAlertDialog();
    })

    Divider()
    Row() {
      Image($r('app.media.icon_prize'))
        .height(25)
      Text('我的中奖')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .onClick(() => {
      CommonAlertDialog();
    })
  }
  .padding({ left: 10, right: 10 })
  .margin({ top: 10 })
  .backgroundColor('#ffffffff')
  .borderRadius(10)

  Column() {
    Row() {
      Image($r('app.media.icon_member'))
        .height(25)
      Text('会员章程')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .onClick(() => {
      CommonAlertDialog();
    })

    Divider()
    Row() {
      Image($r('app.media.icon_hotel'))
        .height(25)
      Text('关于舜和')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .onClick(() => {
      CommonAlertDialog();
    })

    Divider()
    Row() {
      Image($r('app.media.icon_privacy_policy'))
        .height(25)
      Text('隐私政策')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .onClick(() => {
      CommonAlertDialog();
    })
  }
  .padding({ left: 10, right: 10 })
  .margin({ top: 10 })
  .backgroundColor('#ffffffff')
  .borderRadius(10)

  Column() {
    Row() {
      Image($r('app.media.icon_settings'))
        .height(25)
      Text('账号设置')
        .height(30)
        .margin(10)
      Blank()
      Image($r('app.media.icon_right'))
        .height(15)
    }
    .height(60)
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
  }
  .padding({ left: 10, right: 10 })
  .margin({ top: 10 })
  .backgroundColor('#ffffffff')
  .borderRadius(10)
  .onClick(() => {
    CommonAlertDialog();
  })

  Button('退出登录')
    .fontColor('#ff402c05')
    .backgroundColor('#CCAD70')
    .padding({ left: 10, right: 10 })
    .margin({ top: 10 })
    .width('90%')
    .onClick(() => {
      AlertDialog.show(
        {
          title: '',
          message: '你都没登录怎么退出？',
          autoCancel: true,
          alignment: DialogAlignment.Center,
          offset: { dx: 0, dy: -20 },
          // gridCount: 3,
          confirm: {
            value: '知道了',
            action: () => {
              console.info('Button-clicking callback');
            }
          },
          cancel: () => {
            console.info('Closed callbacks');
          },
          onWillDismiss:(dismissDialogAction: DismissDialogAction)=> {
            console.info("reason=" + JSON.stringify(dismissDialogAction.reason))
            console.log("dialog onWillDismiss")
            if (dismissDialogAction.reason == DismissReason.PRESS_BACK) {
              dismissDialogAction.dismiss();
            }
            if (dismissDialogAction.reason == DismissReason.TOUCH_OUTSIDE) {
              dismissDialogAction.dismiss();
            }
          }
        }
      )
    })
}

function CommonAlertDialog() {
  AlertDialog.show(
    {
      title: '',
      message: '此功能暂不支持',
      autoCancel: true,
      alignment: DialogAlignment.Center,
      offset: { dx: 0, dy: -20 },
      // gridCount: 3,
      confirm: {
        value: '知道了',
        action: () => {
          console.info('Button-clicking callback')
        }
      },
      cancel: () => {
        console.info('Closed callbacks')
      },
      onWillDismiss: (dismissDialogAction: DismissDialogAction) => {
        console.info("reason=" + JSON.stringify(dismissDialogAction.reason))
        console.log("dialog onWillDismiss")
        if (dismissDialogAction.reason == DismissReason.PRESS_BACK) {
          dismissDialogAction.dismiss()
        }
        if (dismissDialogAction.reason == DismissReason.TOUCH_OUTSIDE) {
          dismissDialogAction.dismiss()
        }
      }
    }
  )
}

@Builder
export function MySwiper() {
  Swiper() {
    Image($r('app.media.bayu'))
      .width('100%')
      .height(250)
  }
  .indicator(true)
  .displayCount(1)
}

@Builder
export function MyNotice() {
  Row() {
    Image($r('app.media.icon_notice'))
      .height(30)
      .width(30)

    Text('公告')
      .height('100%')
      .fontColor('#ffe5cf0a')
    Text('“舜和会”客房礼遇您了解吗')
      .height('100%')
      .fontColor('#ffd0cfcf')
    Text('查看')
      .height('100%')
    Image($r('app.media.icon_right'))
      .height('100%')
  }
  .height(40)
  .margin({ top: 10 })
  .padding(10)
  .width('95%')
  .justifyContent(FlexAlign.SpaceBetween)
  .backgroundColor('#ffffffff')
  .borderRadius(10)
}

@Builder
export function MyGrid() {
  Grid(undefined, /*this.layoutOptions*/) {
    GridItem() {
      Image($r('app.media.order_rom'))
        .borderRadius(10)
    }
    .onClick(() => {
    // todo: 写酒店列表
      new ListOfHotels();
    })

    GridItem() {
      Image($r("app.media.group_purchase"))
        .borderRadius(10)
    }
  }
  .margin(10)
  .columnsTemplate('1fr 1fr')
  .rowsTemplate('1fr')
  .columnsGap(15)
  .rowsGap(20)
  .width('100%')
  .height(150)

  Grid(undefined, /*this.layoutOptions*/) {
    GridItem() {
      Image($r("app.media.reserve"))
        .borderRadius(10)
    }

    GridItem() {
      Image($r('app.media.order'))
        .borderRadius(10)
    }

    GridItem() {
      Image($r('app.media.concat'))
        .borderRadius(10)
    }
  }
  .columnsTemplate('1fr 1fr 1fr')
  .columnsGap(10)
  .rowsGap(20)
  .width('100%')
  .height(100)
}
@Component
export struct ListOfHotels {
  @State message: string = 'Hello World';

  build() {
    List() {
      ListItem() {
        Text('北京').fontSize(24)
      }

      ListItem() {
        Text('杭州').fontSize(24)
      }

      ListItem() {
        Text('上海').fontSize(24)
      }
    }
    .backgroundColor('#FFF1F3F5')
    .alignListItem(ListItemAlign.Center)
  }
}
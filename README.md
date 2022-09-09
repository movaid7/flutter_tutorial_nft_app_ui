# Flutter NFT App - UI

### Tutorial Source

[![NFT app UI • Flutter Tutorial](https://img.youtube.com/vi/KqNB2rCiNd4/0.jpg)](https://www.youtube.com/watch?v=KqNB2rCiNd4 "NFT app UI • Flutter Tutorial")



### Learnings

- Use of `IndexedStack` for switching between screens with a `bottomNavigationBar`
- Ability to have body extend behind `bottomNavigationBar` with
  ```dart
  extendBody: true
  ```
- Use of `DefaultTabController`, `TabBar`, `TabBarView` and `TabPage` for handling tabbed views

  - Use of the `AutomaticKeepAliveClientMixin` mixin to maintain state when switching between tabs
   
    ```dart
    class _TabPageState extends State<TabPage> with AutomaticKeepAliveClientMixin<TabPage> {
      @override
      bool get wantKeepAlive => true;
      ...
    }
    ```
    

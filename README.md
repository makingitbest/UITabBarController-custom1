# UITabBarController-custom1
升级版的定制导航栏控制器

![定制的UITabBarController](http://images2015.cnblogs.com/blog/976232/201608/976232-20160821221949667-1133738028.gif)

    详细的用法,可以参考本人的博客
    [http://www.cnblogs.com/makingitbest/p/5792828.html](http://www.cnblogs.com/makingitbest/p/5792828.html)

    1.并不是对UINavigationBar的封装,而是通过UIViewController来定制一个我们需要的UINavigationBar.
    2.底层--->上层 CustomViewController - NormalContentViewController - NormalTitleViewController
    3.基本所有的控制器继承于最外层的NormalTitleViewController(也许这一层还会平级延展).
    

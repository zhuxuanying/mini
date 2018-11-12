//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
      productList:[],
      pno:0 ,//当前页
      pageSize:5,  //页大小
      
      hasMore:true //用于记录是否有更多的数据
  },
  //事件处理函数
  bindViewTap: function() {
   
  },
  LoadMore:function(){
    wx.request({
      url:"http://localhost:7000/mini/index",
      type:"GET",
      data:{
        pno:++this.data.pno,
        pageSize:this.data.pageSize
      },
      success:(res)=>{
        //判断是否有更多数据
        var pageCount=res.data.pageCount;
        //console.log(pageCount);
        if(pageCount<=this.data.pno){
          this.setData({
            hasMore:false
          })
        }
        //console.log(res.data)
        var rows=this.data.productList.concat(res.data.data);
        console.log()
        this.setData({
          productList:rows,
          
        })
      }
    })
  },
  onLoad: function () {
    this.LoadMore()
  } ,


  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
 onPullDownRefresh: function () {
    //1 显示第一页数据
    this.setData({
     pageIndex:0,
     shopList:[],
     hasMore:true
   })
   //2 加载更多
   this.LoadMore();
   
 },
 
   /**
    * 页面上拉触底事件的处理函数
    */
   onReachBottom: function () {
     this.LoadMore();
    
   },

   showDetail:function(e){
    var pid=e.target.dataset.pid;
    //console.log(pid)
     //跳转方式1 
    // 相对路径  ../detail/detail
    //绝对路径  /page/detail/detail
   /*wx.redirectTo({
      url:"/pages/detail/detail"
    })*/

    //跳转方式2  保留当前组件
     wx.navigateTo({
       url:"../detail/detail?pid="+pid
    });

    //跳转方式3  没有组件限制
   /* wx.reLaunch({
      url: "../detail/detail?pid="+pid
    })*/
  },
  
})

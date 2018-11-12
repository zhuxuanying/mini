// pages/shopCart/shopCart.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      carts:[],//商品列表
      selectAllStatus:false,  //是否全选
      totalPrice:0,//总价
      totalNum:0, //商品总数
      hasList:false, //是否为空
      hasEditor:true,//右上角编辑true 显示编辑  
      selectLeastOne:false,//最少选中一个  默认删除时开始一个都选中
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var value=wx.getStorageSync("totalNum");
    this.setData({
      totalNum:value
    })
    this.getInfo()
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    this.getInfo()
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },
  
  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  //向服务器加载数据
  getInfo:function(){
    wx.request({
      url: "http://localhost:7000/shopCart/info",
      success: (res) => {
        var newCart = res.data
        //console.log(newCart);
        this.setData({
          carts: newCart
        })
        //console.log(this.data.carts)
      }
    })
  },
  //单机时候选中在单机取消
  selectToggle(e){
    const index = e.currentTarget.dataset.index;    // 获取data- 传进来的index
    let carts = this.data.carts; 
                       
    const selected = carts[index].selected;  
    //console.log(carts[index])
    //console.log(carts[index].selected)       
    carts[index].selected =!selected;
    carts[index].isSelect=!selected;              
    this.setData({
        carts: carts
    });
    for(let i=0;i<carts.length;i++){
      //console.log(carts[i].selected)
        if(1){  
          //console.log("select")
           this.setData({
             selectLeastOne:true
           })
           break
        }
    }
    console.log(this.data.carts)
    this.getTotalPrice();                          
  },
  //右上角编辑切换
  editor(){
    var carts=this.data.carts;
    for(let i = 0; i<carts.length; i++) { 
      carts[i].selected=false;
      carts[i].isSelect=false;
    }
    this.setData({
     selectAllStatus:false,
     carts: carts,
     hasEditor:false
    })
    this.getTotalPrice();
  },
  successEditor(){
      this.data.hasEditor=true;
      this.setData({
        hasEditor:true
    });
  },
  //总价计算
  getTotalPrice() {
    let carts = this.data.carts;                  
    let total = 0;
    let count=0;
    for(let i = 0; i<carts.length; i++) {        
        if(carts[i].selected) { //选中才会计算                   
            total += carts[i].num * carts[i].price;   
            count+=carts[i].num 
        }
    }
    this.setData({                                
        carts: carts,
        totalPrice: total.toFixed(2),
        totalNum:count
    });
    wx.setStorage({
      key: "totalNum",
      data: count
    })
    //console.log(this.data.totalPrice)
  },
  //是否全选
  selectAll(){
   var isAll=this.data.selectAllStatus;  //是否全选
   isAll=!isAll;
   var carts=this.data.carts;
   for(let i = 0; i<carts.length; i++) { 
     carts[i].selected=isAll;
     carts[i].isSelect=isAll;
   }
   this.setData({
    selectAllStatus:isAll,
    carts: carts,
   })
   //console.log(this.data.selectAllStatus);
   //console.log(this.data.carts)
   this.getTotalPrice();   
  },
  //商品数量加1
  add(e){
    //console.log("商品数量加")
    const index = e.currentTarget.dataset.index;
    //console.log(index)
    var carts=this.data.carts;
    if(carts[index].num<9){
      carts[index].num++;
    }else{
      carts[index].num=9
    }

    this.setData({
      carts:carts
    })
    this.getTotalNum()
    //console.log(carts[index])
  },
  //商品数量减一
  sub(e){
    const index = e.currentTarget.dataset.index;
    var carts=this.data.carts;
    if(carts[index].num>0){
      carts[index].num--;
      this.getTotalNum()
    }else{
      carts[index].num=0
    }
    this.setData({
      carts:carts
    })
  },
  //删除数据库中数据
  deleteInfo:function(arr){
    console.log("删除数据库中的数据")
    wx.request({
        url:"http://localhost:7000/shopCart/delete",
        method: 'POST',
        header:{
          'content-type': 'application/x-www-form-urlencoded'
        },
        data:{
          arr:arr
        },
        success:function(res){
          console.log(res)
        }
      })
  },
  deleteCartsItem(e){ 
    var arr=[]
    var indexs=[]
    var carts=this.data.carts;
    //console.log(carts)
    //console.log(carts)
    for(let i=0;i<carts.length;i++){
      //console.log(carts[i].isSelect)
      if(carts[i].isSelect==true){
        arr.push(carts[i].pid)
        indexs.push(i)
      }
      console.log("这是arr"+arr);
      console.log("这是indexs"+indexs)
    }
    for(var index of indexs) {
        //console.log(carts)
        carts.splice(index,1)
    }
    this.deleteInfo(arr)
    
    this.setData({
      carts:carts
    })
  },
  //计算商品总数
  getTotalNum:function(){
    var newTotalNum=0;
    var carts=this.data.carts;
    for(var item of carts){
      newTotalNum+=item.num;
    }
    this.setData({
      totalNum:newTotalNum
    })
    wx.setStorageSync('totalNum', newTotalNum)
  }
})
// pages/detail/detail.js
const { $Toast } = require('../../dist/base/index');
Page({
  /**
   * 页面的初始数据
   */
  data: {
    dProduct:[],
    switchMsg:"pic",
    indicatorDots: false,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    addSuccess:false,
    pid:""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
   // console.log(111)
      //console.log(options)
      var pid=options.pid;
      this.setData({
        pid:pid
      })
      wx.request({
        url:"http://localhost:7000/mini/detail",
        type:"GET",
        data:{
          pid:pid
        },
        success:(res)=>{
            this.setData({
              dProduct:res.data[0]
            })
            //console.log(this.data.dProduct)
        }
      })
    try {
      var value = wx.getStorageSync('totalNum')
      if (value) {
        this.setData({
          totalNum:value
        })
      }
    } catch (e) {
      console.log("totalNum没有获取到")
    }
    console.log(111)
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
    console.log(222)
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


  //自定义函数
  //标签页
  handlerSwitch:function(e){
    if (e.target.dataset.switch!==undefined){
      var switchMsg=e.target.dataset.switch;
      this.setData({
        switchMsg: switchMsg
      })
    }
   // console.log(e)
  },
  //加入购物车
  addShopCart:function(){
    var newToatalNum=parseInt(this.data.totalNum)+1
      this.setData({
        addSuccess:true,      
        totalNum:newToatalNum
      })  
    wx.setStorageSync('totalNum', newToatalNum)
    var value=wx.getStorageSync("totalNum");
    console.log(value);
    var t=setTimeout(() => {
      this.setData({
        addSuccess:false
      })
    }, 1000)
    
    this.upDate()
  },
  //更新数据库
  upDate:function(){
    var pid=this.data.pid;
    var num=1;
    wx.request({
      url:"http://localhost:7000/shopCart/insert",
      data:{
        pid:pid,
        num:num
      },
      method:"GET",
      success:(res)=>{
        //console.log(res)
      }
    })
  },
  //跳转到购买
  jumpToPay:function(e){
      console.log(e)
      var pid=e.target.dataset.pid
      wx.navigateTo({
        url: "../pay/pay?pid="+pid
      })
  } 
})
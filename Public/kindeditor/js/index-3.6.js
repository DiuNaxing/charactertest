
/**页面宽高控制*/
var width=document.body.offsetWidth;
var height= document.documentElement.clientHeight;

$('#home').css({
    "width":width,
    "height":height
});
$('#subjectBox').css({
    "width":width,
    "height":height
});
$('#chart').css({
    "width":width,
    "height":width*0.6
});
$('#characterChart').css({
    "width":width,
    "height":width*0.8
});
$('#playChart').css({
    "width":width,
    "height":width*0.8
});
var canvasWidth = width / 3.5;
$('.ballCanvas').attr('width', canvasWidth * 2);
$('.ballCanvas').attr('height', (canvasWidth + 10)*2);
$('.ballCanvas').css({
    "width":canvasWidth + 'px',
    "height":canvasWidth + 10 + 'px'
});
/**开始测试按钮*/
function start() {
    $("#home").fadeOut(150,function () {
        $(this).next().fadeIn(150);
        window.scrollTo(0,0);
    });
}

/**加载测试题*/
var subjectCount=0;//总题数
var pageCount=0;//总页数
var subjectCountByPage=height>=640?4:3;//每页数量
$(function () {
    $.ajax({
        type: "get",
        url: 'http://127.0.0.1/index.php/home/index/show',
        data: {
         "operation":'testSubject'
        },
        success: function (data) {
          
             loadTestSubject(data);
        }
    })
});
function loadTestSubject(data){
 
 
//    var subject=$.parseJSON(subject);
    var subject =data;
    var keyArr=[];
    for (var i in subject){
        keyArr.push(i);
    }
   
//    var newArr = {1:'我尤其喜欢在卧室里被支配',2:'我尤其喜欢在卧室里支配我的伴侣'};
    
    // var newArr = ['我尤其喜欢在卧室里被支配','我尤其喜欢在卧室里支配我的伴侣'];
    // keyArr =newArr;
    // console.log(newArr)
    subjectCount=keyArr.length;
    pageCount=Math.ceil(subjectCount/subjectCountByPage);

    var box=$('#subjectList');


    for (var p=0;p<pageCount;p++){
        p=p-0;
        var pageId=p+1;
        var page=$('<div class="page page-'+pageId+'"></div>');
        if (pageId == pageCount){ //最后一页
            page=$('<div class="page page-'+pageId+' last"></div>');
        }
        var rbKeyStart=p*subjectCountByPage;
        var rbKeyEnd=rbKeyStart+subjectCountByPage;
        var rbKeyArr=keyArr.slice(rbKeyStart,rbKeyEnd);
        for (var r=0;r<rbKeyArr.length;r++){
            var subjectKey=rbKeyStart+r+1;
            var rbKey=keyArr[subjectKey-1];
            var rbText=subject[rbKey];
            var rb=$('<div class="subjectBox">' +
                    '<p>'+subjectKey+'. '+rbText+'。</p>' +
                    '<div id="rb-'+subjectKey+'" class="rb" data-subjectId="'+rbKey+'">' +
                        '<div class="rb-tab" data-value="0"></div>' +
                        '<div class="rb-tab" data-value="1"></div>' +
                        '<div class="rb-tab" data-value="2"></div>' +
                        '<div class="rb-tab" data-value="3"></div>' +
                        '<div class="rb-tab" data-value="4"></div>' +
                    '</div>' +
                    '<div class="span-box">' +
                        '<span class="span-left">完全不同意</span>' +
                        '<span class="span-right">完全同意</span>' +
                    '</div>' +
                '</div>');
            page.append(rb);
        }

        var next=$('<div class="page-btn"><img class="subjectIconLeft prev" src="http://xiyouquanweb.oss-cn-beijing.aliyuncs.com/48/image/subjectIconLeft.png" alt=""></div>');
        if (p==0){ //第一页
            next=$('<div class="page-btn"></div>');
        }
        page.append(next);
        box.append(page);
    }
}

/**进度球*/
//range控件信息
var rangeValue = 0;
var nowRange = 0; //用于做一个临时的range
var xOffset = 0; //波浪x偏移量
var render = function () {
    //画布
    var canvas = document.getElementById('progress');
    canvas.style.width=width / 3 + 'px';
    canvas.style.height=width / 3 + 'px';
    var ctx = canvas.getContext('2d');
    var mW = canvas.width = width / 3 * 2;
    var mH = canvas.height = width / 3 * 2;
    var lineWidth = 2;
    ctx.lineWidth = lineWidth;
    //圆属性
    var r = mH / 2; //圆心
    var cR = r - 5 * lineWidth; //圆半径
    //Sin 曲线属性
    var sX = 0;
    var sY = mH / 2;
    var axisLength = mW; //轴长
    var waveWidth = 0.023; //波浪宽度,数越小越宽
    var waveHeight = 10; //波浪高度,数越大越高
    var speed = 0.07; //波浪速度，数越大速度越快
    //画圈函数
    var IsdrawCircled = false;
    var drawCircle = function () {
        ctx.beginPath();
        ctx.strokeStyle = 'rgba(255, 255, 255, 0.6)';
        ctx.arc(r, r, cR + 5, 0, 2 * Math.PI);
        ctx.stroke();
        ctx.beginPath();
        ctx.lineWidth = 1.2;
        ctx.arc(r, r, cR, 0, 2 * Math.PI);
        ctx.stroke();
        ctx.clip();
        ctx.fillStyle="rgba(255, 255, 255, 0.2)";
        ctx.fill();
        ctx.beginPath();
    };
    //画sin 曲线函数
    var drawSin = function (xOffset) {
        ctx.save();
        var points = []; //用于存放绘制Sin曲线的点
        ctx.beginPath();
        //在整个轴长上取点
        for (var x = sX; x < sX + axisLength; x += 20 / axisLength) {
            //此处坐标(x,y)的取点，依靠公式 “振幅高*sin(x*振幅宽 + 振幅偏移量)”
            var y = -Math.sin((sX + x) * waveWidth + xOffset);
            var dY = mH * (1 - nowRange / 100 );
            points.push([x, dY + y * waveHeight]);
            ctx.lineTo(x, dY + y * waveHeight);
        }
        //封闭路径
        ctx.lineTo(axisLength, mH);
        ctx.lineTo(sX, mH);
        ctx.lineTo(points[0][0], points[0][1]);
        ctx.fillStyle = 'rgba(255, 255, 255, 0.35)';
        ctx.fill();
        ctx.restore();
    };
    //写百分比文本函数
    var drawText = function () {
        ctx.save();
        var size = 0.25 * cR;
        ctx.font = size + 'px Microsoft Yahei';
        ctx.textAlign = 'center';
        ctx.fillStyle = "#ffffff";
        ctx.fillText('测 试 进 度', r, r - size * 0.1);
        ctx.fillText(~~nowRange + '%', r, r + size * 1.2);
        ctx.restore();
    };
    ctx.clearRect(0, 0, mW, mH);
    if (IsdrawCircled == false) {
        drawCircle();
    }
    if (nowRange <= rangeValue) {
        var tmp = 1;
        nowRange += tmp;
    }
    if (nowRange > rangeValue) {
        var tmp = 1;
        nowRange -= tmp;
    }
    drawSin(xOffset);
    drawText();
    xOffset += speed;
    requestAnimationFrame(render);
};
render();

/**未来元素绑定事件 下一页 上一页 被选中*/
$(function () {
    /**测试题 下一页按钮*/
    /*$(document).on("click", ".next", function(){
        $(this).parent().parent().fadeOut(150,function () {
            $(this).next().fadeIn(150);
            window.scrollTo(0,0);
        })
    });*/
    /**测试题 上一页按钮*/
    $(document).on("click", ".prev", function(){
        $(this).parent().parent().fadeOut(150,function () {
            $(this).prev().fadeIn(150);
            window.scrollTo(0,0);
        })
    });
    /**测试题 被选效果*/
    $(document).on("click", ".rb-tab", function(){
        $(this).parent().find(".rb-tab").removeClass("rb-tab-active");
        $(this).parent().find(".rb-tab").removeClass("rb-tab-prev-active");
        $(this).addClass("rb-tab-active");
        $(this).prevAll().addClass("rb-tab-prev-active");

        var page=$(this).parents('.page');
        //判断当前页是否填完
        if (page.find('.rb-tab-active').length>=page.find('.subjectBox').length){
            if (page.hasClass('last')){
                submit();
            }else {
                page.fadeOut(150,function () {
                    $(this).next().fadeIn(150);
                    window.scrollTo(0,0);
                })
            }
        }

        //设置进度球
        var activeNo=$(".rb-tab-active").length;
        rangeValue=(100/subjectCount)*activeNo;
    });
});
/**获取答题信息*/
function getSurvey(){
    var survey = [0];//初始化数组
    for (var i=0; i<$(".rb").length; i++) {//rb是题目，遍历每道题
        var rb = i+1;
        var rbValue = parseInt($("#rb-"+rb).find(".rb-tab-active").attr("data-value"));//获取当前题被选中的项
        if (!Number(rbValue)){
            rbValue=parseInt(0);
        }
        var key=$("#rb-"+rb).attr('data-subjectId');
        key = parseInt(key);

        survey[key]=parseInt(rbValue);
    }
    return survey;
}

/**提交答题信息*/
function submit(){
    var survey = getSurvey();
	// console.log(survey);
    survey=JSON.stringify(survey);
	// console.log(survey);
    $.ajax({
        type: "post",
        url: 'http://127.0.0.1/index.php/home/index/show_result',
        data: {
            "operation":'testResult',
            "survey":survey
        },
        success: function (data) {
            // var da=JSON.parse(data);
 
            var da=data;
            $('#subjectBox').fadeOut(150,function () {
                $(this).next().fadeIn(150);
                window.scrollTo(0,0);
            });
            testChart(da);
        }
    })
}
/**测试结果画图*/ 
function testChart(result) {
	 
    var chart = echarts.init(document.getElementById('chart'));
 
    var option = {
        tooltip:{
            trigger:'item'
        },
        radar: [
            {
                indicator: [
                    { text: 'Switch（双属性）', max: 100 },
                    { text: 'S属性', max: 100},
                    { text: 'Dom属性', max: 100 },
                    { text: 'Sub属性', max: 100 },
                    { text: 'M属性', max: 100}


                ],
                triggerEvent:true,
                startAngle: 90,//开始角度
                center: ['50%','50%'],//居中
                nameGap:10,//文字距离。
                name:{textStyle:{fontSize:14,fontWeight:600,color:'#000000'}},//文字样式
                splitNumber:5//分割段数
            }
        ],
        series: [
            {
                type: 'radar',
                symbol: "none",
                data: [
                    {
                        value: [result.personality.switch.value,result.personality.s.value,result.personality.dom.value,result.personality.sub.value,result.personality.m.value],
                        // value: [80,20,60,55,20],
                        name: '主人格分布',
                        lineStyle: {
                            normal: {
                                color: '#C5C8E9'
                            }
                        },
                        areaStyle: {
                            normal: {
                                color: '#C5C8E9'
                            }
                        }
                    }
                ]
            }
        ]
    };
    chart.setOption(option);// 使用数据显示图表。

    var character=result.character;//性格

    console.log(result)
    var play=result.play;//玩法
    var num=1;
    var item='';
    for (var i in character){
        if (num>3) {
            num=1;
            break;
        }
        item=character[i];
        $('#characterBallCanvas'+num).attr('data-name',item.name);
        $('#characterBallCanvas'+num).attr('data-explain',item.explain);
        drowBallCanvas('characterBallCanvas'+num,canvasWidth, item.value, '#e0e0e0', '#02d3fe', item.name, 'http://xiyouquanweb.oss-cn-beijing.aliyuncs.com/48/image/character/'+i+'.png');
        num++;
    }
    for (i in play){
        if (num>3) {
            num=1;
            break;
        }
        item=play[i];
        $('#playBallCanvas'+num).attr('data-name',item.name);
        $('#playBallCanvas'+num).attr('data-explain',item.explain);
        drowBallCanvas('playBallCanvas'+num,canvasWidth, item.value, '#e0e0e0', '#02d3fe', item.name, 'http://xiyouquanweb.oss-cn-beijing.aliyuncs.com/48/image/play/'+i+'.png');
        num++;
    }
    var characterChart=echarts.init(document.getElementById('characterChart'));
    var playChart=echarts.init(document.getElementById('playChart'));
    var nameListCharacter=[];
    var nameListPlay=[];
    var dataListCharacter=[];
    var dataListPlay=[];
    for (i in character){
        nameListCharacter.push(character[i].name);
        dataListCharacter.push(character[i].value);
    }
    for (i in play){
        nameListPlay.push(play[i].name);
        dataListPlay.push(play[i].value);
    }
    var optionCharacter = {
        tooltip: {
            trigger: 'item',
            formatter:'{b0}: {c0}%'
        },
        color:['#5669C7'],
        grid: {
            left: 68,
            top:20,
            bottom:30
        },
        xAxis: {
            type: 'value',
            name: '%',
            min:0,
            max:100
        },
        yAxis: {
            type: 'category',
            triggerEvent:true,
            inverse:true,
            data: nameListCharacter
        },
        series: [
            {
                type: 'bar',
                barCategoryGap:'45%',
                data: dataListCharacter

            }
        ]
    };
    var optionPlay = {
        tooltip: {
            trigger: 'item',
            formatter:'{b0}: {c0}%'
        },
        color:['#5669C7'],
        grid: {
            left: 68,
            top:20,
            bottom:30
        },
        xAxis: {
            type: 'value',
            name: '%',
            min:0,
            max:100
        },
        yAxis: {
            type: 'category',
            triggerEvent:true,
            inverse:true,
            data: nameListPlay
        },
        series: [
            {
                type: 'bar',
                barCategoryGap:'45%',
                data: dataListPlay

            }
        ]
    };
    characterChart.setOption(optionCharacter);
    playChart.setOption(optionPlay);

    chart.on('click', function (params) {
        if (params.componentType == 'radar'){
            for (i in personality){
                if (personality[i].name == params.name){
                    showExplain('<b>'+params.name+'：</b>'+personality[i].explain);
                    break;
                }
            }

        }
    });
    characterChart.on('click', function (params) {
        if (params.componentType == 'yAxis' && params.value != '强势' && params.value != '弱势'){
            for (i in character){
                if (character[i].name == params.value){
                    showExplain('<b>'+params.value+'：</b>'+character[i].explain);
                    break;
                }
            }

        }
    });
    playChart.on('click', function (params) {
        if (params.componentType == 'yAxis'){
            for (i in play){
                if (play[i].name == params.value){
                    showExplain('<b>'+params.value+'：</b>'+play[i].explain);
                    break;
                }
            }

        }
    });
}
/**
 * 绘制球形canvas
 * canvasId,center 中心,process 百分比,backColor, proColor 进度颜色, 底部文本，中心图片
 */
function drowBallCanvas(canvasId, center, process, backColor, proColor, text, imgSrc) {
    var process2=process;
    if (process==0){process2=100;}
    else if (process==100){process2=0;}
    var canvas = document.getElementById(canvasId);
    var cts = canvas.getContext('2d');
    var radius=center*0.65;

    cts.beginPath();
    // 坐标移动到圆心
    cts.moveTo(center, center);
    // 画圆,圆心是24,24,半径24,从角度0开始,画到2PI结束,最后一个参数是方向顺时针还是逆时针
    cts.arc(center, center, radius, 0, Math.PI * 2, true);
    cts.closePath();
    // 填充颜色
    cts.fillStyle = backColor;
    cts.fill();

    cts.beginPath();
    // 画扇形的时候这步很重要,画笔不在圆心画出来的不是扇形
    cts.moveTo(center, center);
    // 跟上面的圆唯一的区别在这里,不画满圆,画个扇形
    cts.arc(center, center, radius, Math.PI * 1.5 - Math.PI * 2 * (100 - process2) / 100, Math.PI * 1.5, true);
    cts.closePath();
    cts.fillStyle = proColor;
    cts.fill();

    //填充圆心背景颜色
    cts.beginPath();
    cts.moveTo(center, center);
    cts.arc(center, center, radius - (radius * 0.1), 0, Math.PI * 2, true);
    cts.closePath();
    cts.fillStyle = '#BECFFA';
    cts.fill();

    //填充圆心背景图片
    var img = new Image();
    img.src = imgSrc;
    img.onload = function () {
//            cts.drawImage(img, center*0.6, center*0.6, center*0.8, center*0.8);
        cts.drawImage(img, center*0.5, center*0.5, center, center);
    };

    //在底部写字
    var textSize = center*0.2;
    cts.font = textSize + "pt Arial";
    cts.fillStyle = '#000000';
    cts.textAlign = 'center';
    cts.textBaseline = 'middle';
    cts.moveTo(center, center);
    cts.fillText(text + ' ' + process + "%", center, center * 2 );
}
/**显示属性说明框*/
$('.ballCanvas').click(function () {
    var name=$(this).attr('data-name');
    var explain=$(this).attr('data-explain');
    if (name != '强势' && name != '弱势'){
        showExplain('<b>'+name+'：</b>'+explain);
    }
});
/**显示属性说明框*/
function showExplain(text) {
    $('#explain').html(text);
    $('#explainBox').show(100,function () {
        $('#explainBox').click(function () {
            $('#explainBox').hide();
            document.body.parentNode.style.overflowY = "auto";//开启纵向滚动条
        });
    });
    document.body.parentNode.style.overflowY = "hidden";//隐藏纵向滚动条
}
/**性格、玩法查看全部*/
$('.chartAllShow').click(function () {
    $(this).fadeOut(100,function () {
        $(this).next().fadeIn(100);
    })
});
$('.chartAllHide').click(function () {
    $(this).parent().fadeOut(100,function () {
        $(this).prev().fadeIn(100);
    })
});
/**复制链接*/
$("#copy").attr('data-clipboard-text',window.location.href);
var clipboard = new Clipboard("#copy");
clipboard.on("success",function (element) {//复制成功的回调
    $("#tips").empty();
    $("#tips").text("已为您将链接复制到剪切板");
    $("#tips").fadeIn(200,function () {
        $('#tips').delay(2000).fadeOut(200)
    });
});
clipboard.on("error",function (element) {//复制失败的回调
    $("#tips").empty();
    $("#tips").text("连接复制失败，请手动复制。");
    $("#tips").fadeIn(200,function () {
        $('#tips').delay(3000).fadeOut(200)
    });
});
/**保存结果*/

function downloadForJS(){
    $("#tips").empty();
    $("#tips").text("正在为您生成图片请稍候....");
    $("#tips").fadeIn(200);
    window.scrollTo(0,0);
    var img = new Image();
    img.src = 'http://xiyouquanweb.oss-cn-beijing.aliyuncs.com/48/image/qrCode2.jpg';
    img.onload = function(){
        $('#qrCode').attr('src',img.src);
        $('#copy').hide();
        $('#pictures').hide();
        $('#tips').fadeOut(0);
        html2canvas($('body')).then(function(canvas) {
            var imgUrl = canvas.toDataURL("image/png"); // 获取生成的图片的url 　
            $("#tips").empty();
            $("#tips").html('图片生成成功，请长按保存...<br/><div style="width: 100%;max-height: 10em;overflow: hidden"><img src="'+imgUrl+'" style="width: 100%;"></div>');
            $("#tips").fadeIn(200);
            $('body').one('click',function () {
                $('#tips').fadeOut(200);
                $('#copy').show();
                $('#pictures').show();
                $('#qrCode').attr('src','http://xiyouquanweb.oss-cn-beijing.aliyuncs.com/48/image/qrCode1.jpg');
            })
        })
    };
}
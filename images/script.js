$(document).ready(function(){
    jQuery.fn.anim_progressbar = function (aOptions) {
        // def values
        var iCms = 1000;
        var iMms = 60 * iCms;
        var iHms = 3600 * iCms;
        var iDms = 24 * 3600 * iCms;

        // def options
        var aDefOpts = {
            start: new Date(), // now
            finish: new Date().setTime(new Date().getTime() + 5 * iCms), // now + 60 sec
            interval: 100
        }
        var aOpts = jQuery.extend(aDefOpts, aOptions);
        var vPb = this;

        // each progress bar
        return this.each(
            function() {
                var iDuration = aOpts.finish - aOpts.start;

                // calling original progressbar
                $(vPb).children('.pbar').progressbar();

                // looping process
                var vInterval = setInterval(
                    function(){
                        var iLeftMs = aOpts.finish - new Date(); // left time in MS
                        var iElapsedMs = new Date() - aOpts.start, // elapsed time in MS
                            iDays = parseInt(iLeftMs / iDms), // elapsed days
                            iHours = parseInt((iLeftMs - (iDays * iDms)) / iHms), // elapsed hours
                            iMin = parseInt((iLeftMs - (iDays * iDms) - (iHours * iHms)) / iMms), // elapsed minutes
                            iSec = parseInt((iLeftMs - (iDays * iDms) - (iMin * iMms) - (iHours * iHms)) / iCms), // elapsed seconds
                            iPerc = (iElapsedMs > 0) ? iElapsedMs / iDuration * 100 : 0; // percentages

                        // display current positions and progress
                        $(vPb).children('.percent').html('<b>'+iPerc.toFixed(1)+'%</b>');
                        $(vPb).children('.elapsed').html('剩余时间：'+iSec+'秒</b>');
                        $(vPb).children('.pbar').children('.ui-progressbar-value').css('width', iPerc+'%');

                        // in case of Finish
                        if (iPerc >= 100) {
                            clearInterval(vInterval);
                            $(vPb).children('.percent').html('<b>100%</b>');
                            $(vPb).children('.elapsed').html('查询完毕！');
							
							//alert('恭喜你获大奖了！');
							//self.location='/yanzheng2.asp';
//弹出一个iframe层

var i = $.layer({
	type: 1,
	title: false,
	closeBtn: false,
	border : [5, 0.5, '#666', true],
	offset: ['120px',''],
	move: ['.juanmove', true],
	area: ['550px','auto'],
	page: {
		html: '<div><iframe src=lj.asp scrolling=no frameborder=0 width=550 height=226></iframe></div>'
	},
    success: function(){
        layer.shift('top',500);
    }
});
$('.juanLu').on('click', function(){
	layer.close(i);
});


                        }
						
                    } ,aOpts.interval
                );
            }
        );
    }

    // default mode
    $('#progress1').anim_progressbar();

    // from second #5 till 15
    var iNow = new Date().setTime(new Date().getTime() + 5 * 1000); // now plus 5 secs
    var iEnd = new Date().setTime(new Date().getTime() + 15 * 1000); // now plus 15 secs
    $('#progress2').anim_progressbar({start: iNow, finish: iEnd, interval: 100});

    // we will just set interval of updating to 1 sec
    $('#progress3').anim_progressbar({interval: 1000});
});





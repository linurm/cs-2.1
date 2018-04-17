.class public Lzj/zfenlly/gua/FloatWinService;
.super Landroid/app/Service;
.source "FloatWinService.java"


# static fields
.field private static final ButtonHeight:I = 0x42

.field public static final SET_VIEW_START:I = 0x1

.field public static final SET_VIEW_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatWinService"

.field public static a:I

.field static ns:Lzj/zfenlly/gua/NotifySound;

.field private static vibrator:Landroid/os/Vibrator;


# instance fields
.field private addCoordinateView:Landroid/widget/Button;

.field private addIntervalView:Landroid/widget/Button;

.field private addTimesView:Landroid/widget/Button;

.field private add_flag:Z

.field private after10minites:Landroid/widget/Button;

.field private after1hour:Landroid/widget/Button;

.field private afterhalfhour:Landroid/widget/Button;

.field private before10minites:Landroid/widget/Button;

.field private before1hour:Landroid/widget/Button;

.field private beforehalfhour:Landroid/widget/Button;

.field private click_interval:I

.field private click_times:I

.field private ct:Lzj/zfenlly/gua/ClickThread;

.field private delIntervalView:Landroid/widget/Button;

.field private delTimesView:Landroid/widget/Button;

.field private floatView:Lzj/zfenlly/gua/FloatView;

.field private isOnExpandView:Z

.field mContext:Landroid/content/Context;

.field mDownFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout2:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field mMidFloatLayout:Landroid/widget/LinearLayout;

.field private mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

.field mUpFloatLayout:Landroid/widget/LinearLayout;

.field private mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

.field mWindowManager:Landroid/view/WindowManager;

.field private refreshView:Landroid/widget/Button;

.field private settingsView:Landroid/widget/Button;

.field private settings_flag:Z

.field private start18ClickView:Landroid/widget/Button;

.field private start3ClickView:Landroid/widget/Button;

.field private start7ClickView:Landroid/widget/Button;

.field private startClickView:Landroid/widget/Button;

.field private timeSettingView:Landroid/widget/Button;

.field private wifiControlView:Landroid/widget/Button;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field wmParams2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 50
    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 67
    new-instance v1, Lzj/zfenlly/gua/FloatWinService$1;

    invoke-direct {v1, p0}, Lzj/zfenlly/gua/FloatWinService$1;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 89
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 93
    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    .line 94
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return-void
.end method

.method public static NotifyVibrate()V
    .locals 1

    .line 125
    sget v0, Lzj/zfenlly/gua/FloatWinService;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    sput v0, Lzj/zfenlly/gua/FloatWinService;->a:I

    .line 127
    invoke-static {}, Lzj/zfenlly/gua/FloatWinService;->doVibrate()V

    :cond_0
    return-void
.end method

.method private StartClick(I)V
    .locals 7

    .line 619
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    iget-boolean v0, v0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-eqz v0, :cond_0

    .line 620
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {p1}, Lzj/zfenlly/gua/ClickThread;->stopThread()V

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    goto :goto_2

    .line 624
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    if-eqz v0, :cond_1

    .line 625
    new-instance v0, Lzj/zfenlly/gua/Coordinate;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    iget v1, v1, Lzj/zfenlly/gua/TargetFloatView;->x:I

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    iget v2, v2, Lzj/zfenlly/gua/TargetFloatView;->y:I

    invoke-direct {v0, v1, v2}, Lzj/zfenlly/gua/Coordinate;-><init>(II)V

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 627
    :cond_1
    new-instance v0, Lzj/zfenlly/gua/Coordinate;

    invoke-direct {v0}, Lzj/zfenlly/gua/Coordinate;-><init>()V

    goto :goto_0

    .line 629
    :goto_1
    new-instance v0, Lzj/zfenlly/gua/ClickThread;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getTimes(Landroid/content/Context;)I

    move-result v5

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getInterval(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v6, v1, 0x64

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lzj/zfenlly/gua/ClickThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lzj/zfenlly/gua/Coordinate;II)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    if-eqz p1, :cond_2

    .line 631
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {v0, p1}, Lzj/zfenlly/gua/ClickThread;->setTempTimes(I)V

    .line 633
    :cond_2
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {p0}, Lzj/zfenlly/gua/ClickThread;->start()V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    return-object p0
.end method

.method static synthetic access$1000(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delView()V

    return-void
.end method

.method static synthetic access$1100(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V

    return-void
.end method

.method static synthetic access$1200(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addCView()V

    return-void
.end method

.method static synthetic access$1300(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->StartClick(I)V

    return-void
.end method

.method static synthetic access$1400(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 0

    .line 30
    iget p0, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return p0
.end method

.method static synthetic access$1402(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0

    .line 30
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return p1
.end method

.method static synthetic access$1500(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1600(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 0

    .line 30
    iget p0, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return p0
.end method

.method static synthetic access$1702(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0

    .line 30
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return p1
.end method

.method static synthetic access$1800(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1900(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return p0
.end method

.method static synthetic access$300(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addExpandView()V

    return-void
.end method

.method static synthetic access$400(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delExpandView()V

    return-void
.end method

.method static synthetic access$500(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    return p0
.end method

.method static synthetic access$600(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    return-void
.end method

.method static synthetic access$700(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return p0
.end method

.method static synthetic access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return p1
.end method

.method static synthetic access$800(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    return-void
.end method

.method static synthetic access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;
    .locals 0

    .line 30
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    return-object p0
.end method

.method private addCView()V
    .locals 5

    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 671
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 672
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 673
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 675
    :cond_0
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 677
    :goto_0
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 679
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 690
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 692
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x258

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 693
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xc8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 695
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 696
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 697
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    .line 698
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 701
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 703
    new-instance v0, Lzj/zfenlly/gua/TargetFloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->mzParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lzj/zfenlly/gua/TargetFloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    .line 705
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    sget v1, Lzj/zfenlly/gua/RFile/Rfile;->mz:I

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/TargetFloatView;->setImageResource(I)V

    .line 706
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addExpandView()V
    .locals 4

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    const-string v0, "FloatWinService"

    const-string v1, "addExpandView"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    .line 355
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    const-string v1, "Set"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42840000    # 66.0f

    .line 357
    invoke-static {v1, v2}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 358
    invoke-static {v3, v2}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 362
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 363
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$3;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$3;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    .line 377
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    const-string v2, "Time"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 380
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$4;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$4;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$5;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$5;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    .line 408
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    const-string v2, "F5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 411
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 412
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$6;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$6;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    .line 425
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    const-string v2, "[ + ]"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 428
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 429
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$7;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$7;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    .line 443
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 446
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 447
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$8;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$8;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    .line 460
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    const-string v2, "18"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 463
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 464
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$9;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$9;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    .line 477
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 481
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$10;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$10;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    .line 494
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 497
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 498
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$11;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$11;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    .line 511
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    const-string v2, "+ h"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 514
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 515
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$12;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$12;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    .line 524
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    const-string v2, "- h"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 527
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 528
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$13;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$13;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    .line 537
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    const-string v2, "+ 30m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 540
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 541
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$14;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$14;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    .line 550
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    const-string v2, "- 30m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 553
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 554
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$15;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$15;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    .line 565
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    const-string v2, "- 10m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 568
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 569
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$16;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$16;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    .line 579
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    const-string v2, "+ 10m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    sget v1, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 583
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    new-instance v1, Lzj/zfenlly/gua/FloatWinService$17;

    invoke-direct {v1, p0}, Lzj/zfenlly/gua/FloatWinService$17;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSettingsView()V
    .locals 5

    const/4 v0, 0x1

    .line 717
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 718
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xc8

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 722
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    .line 723
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getTimes(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    .line 724
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 726
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 727
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$18;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$18;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    .line 743
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 745
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 746
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$19;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$19;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    .line 766
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getInterval(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    .line 767
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 769
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 770
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$20;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$20;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    .line 786
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 788
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 789
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v1, Lzj/zfenlly/gua/FloatWinService$21;

    invoke-direct {v1, p0}, Lzj/zfenlly/gua/FloatWinService$21;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p0, "TAG"

    const-string v0, "add settings view"

    .line 805
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 5

    .line 238
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    .line 240
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 246
    :goto_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 248
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 251
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 253
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xc8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 256
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 257
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 259
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 260
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 267
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    .line 268
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    .line 272
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    .line 276
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    new-instance p1, Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1, v0, v2, v3, v4}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 279
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p1, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 280
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    new-instance v0, Lzj/zfenlly/gua/FloatWinService$2;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$2;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {p1, v0}, Lzj/zfenlly/gua/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    invoke-virtual {p1}, Lzj/zfenlly/wifi/WifiAdmin;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v0, Lzj/zfenlly/gua/RFile/Rfile;->wifi_on:I

    invoke-virtual {p1, v0}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v0, Lzj/zfenlly/gua/RFile/Rfile;->wifi_off:I

    invoke-virtual {p1, v0}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 307
    :goto_1
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p1, v0}, Lzj/zfenlly/gua/WifiStatusLoader;->setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V

    .line 312
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p0, "addCView"

    const-string p1, "add cview"

    .line 313
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private delCView()V
    .locals 1

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 712
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 713
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private delExpandView()V
    .locals 2

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    const-string v0, "FloatWinService"

    const-string v1, "delExpandView"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 325
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 332
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private delSettingsView()V
    .locals 2

    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    const-string v0, "TAG"

    const-string v1, "del settings view"

    .line 810
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 812
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 814
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private delView()V
    .locals 2

    .line 338
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delExpandView()V

    .line 340
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 342
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    if-eqz v0, :cond_1

    const-string v0, "[ - ]"

    const/4 v1, 0x0

    .line 343
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    :cond_1
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static doVibrate()V
    .locals 3

    const/4 v0, 0x6

    .line 132
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 133
    sget-object v1, Lzj/zfenlly/gua/FloatWinService;->vibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x64
        0xc8
        0x64
        0xc8
    .end array-data
.end method

.method private initViewBox(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private mzParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 639
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    .line 641
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    .line 643
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v0, 0x1

    .line 645
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x28

    .line 647
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x33

    .line 658
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 660
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 661
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x2

    .line 663
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 664
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object p0
.end method

.method public static playSound()V
    .locals 1

    .line 121
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 v0, 0x2

    invoke-static {v0}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static stopClickVibrate()V
    .locals 3

    const/4 v0, 0x2

    .line 137
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 138
    sget-object v1, Lzj/zfenlly/gua/FloatWinService;->vibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0x12c
    .end array-data
.end method


# virtual methods
.method isViewOn()Z
    .locals 1

    .line 232
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "rk3288"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzj/zfenlly/gua/LoadInjectLib;->init(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin;

    invoke-direct {v0, p0}, Lzj/zfenlly/wifi/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 113
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;

    .line 114
    invoke-direct {p0, p0}, Lzj/zfenlly/gua/FloatWinService;->createView(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->vibrateInit()V

    .line 116
    invoke-static {}, Lzj/zfenlly/gua/FloatWinService;->playSound()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 821
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 822
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 823
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 824
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 825
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 826
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    .line 828
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_1

    .line 829
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 830
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 832
    :cond_1
    sget-object p0, Lzj/zfenlly/gua/FloatWinService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method setRefresh()V
    .locals 1

    .line 222
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeAfter10Minites()V
    .locals 2

    .line 156
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeAfter1Hour()V
    .locals 2

    .line 168
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeAfter30Minites()V
    .locals 2

    .line 160
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeBefore10Minites()V
    .locals 2

    .line 152
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeBefore1Hour()V
    .locals 2

    .line 226
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, -0x3c

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method setTimeBefore30Minites()V
    .locals 2

    .line 164
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, -0x1e

    invoke-virtual {p0, v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    return-void
.end method

.method public vibrateInit()V
    .locals 1

    const-string v0, "vibrator"

    .line 836
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatWinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lzj/zfenlly/gua/FloatWinService;->vibrator:Landroid/os/Vibrator;

    return-void
.end method

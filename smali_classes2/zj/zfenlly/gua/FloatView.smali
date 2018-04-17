.class public Lzj/zfenlly/gua/FloatView;
.super Landroid/widget/ImageView;
.source "FloatView.java"


# static fields
.field public static i:I


# instance fields
.field private bClickable:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field public mLinearLayout:Landroid/widget/LinearLayout;

.field private mStartX:F

.field private mStartY:F

.field public mTouchX:F

.field public mTouchY:F

.field private t_down:Ljava/lang/Long;

.field private t_up:Ljava/lang/Long;

.field public windowManager:Landroid/view/WindowManager;

.field public windowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 38
    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 40
    iput-object p2, p0, Lzj/zfenlly/gua/FloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object p4, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public isbClickable()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lzj/zfenlly/gua/FloatView;->bClickable:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 57
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatView;->x:F

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lzj/zfenlly/gua/FloatView;->y:F

    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "rk3288"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget-object v1, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lzj/zfenlly/gua/FloatView;->y:F

    .line 64
    iget v0, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget-object v1, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lzj/zfenlly/gua/FloatView;->x:F

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatView;->updateViewPosition()V

    goto/16 :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatView;->updateViewPosition()V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    iput p1, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->t_up:Ljava/lang/Long;

    .line 96
    iget p1, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget v0, p0, Lzj/zfenlly/gua/FloatView;->mStartX:F

    sub-float/2addr p1, v0

    .line 97
    iget v0, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget v1, p0, Lzj/zfenlly/gua/FloatView;->mStartY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v1, -0x3ee00000    # -10.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_1

    .line 99
    iget-object p1, p0, Lzj/zfenlly/gua/FloatView;->t_up:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lzj/zfenlly/gua/FloatView;->t_down:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 101
    iget-object p1, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    .line 73
    iget p1, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iput p1, p0, Lzj/zfenlly/gua/FloatView;->mStartX:F

    .line 74
    iget p1, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iput p1, p0, Lzj/zfenlly/gua/FloatView;->mStartY:F

    const/4 p1, 0x0

    .line 75
    sput p1, Lzj/zfenlly/gua/FloatView;->i:I

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->t_down:Ljava/lang/Long;

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setbClickable(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatView;->bClickable:Z

    return-void
.end method

.method public updateViewPosition()V
    .locals 3

    .line 117
    sget v0, Lzj/zfenlly/gua/FloatView;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lzj/zfenlly/gua/FloatView;->i:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget v2, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget v2, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

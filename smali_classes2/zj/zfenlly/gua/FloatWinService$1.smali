.class Lzj/zfenlly/gua/FloatWinService$1;
.super Landroid/os/Handler;
.source "FloatWinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzj/zfenlly/gua/FloatWinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzj/zfenlly/gua/FloatWinService;


# direct methods
.method constructor <init>(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object p0

    const-string p1, "t"

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_1
    sget-object p1, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 p1, 0x2

    invoke-static {p1}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 74
    invoke-static {}, Lzj/zfenlly/gua/FloatWinService;->stopClickVibrate()V

    .line 75
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$1;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object p0

    const-string p1, "s"

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

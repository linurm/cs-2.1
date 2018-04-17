.class Lzj/zfenlly/gua/FloatWinService$6;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
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

    .line 412
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 415
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-virtual {p1}, Lzj/zfenlly/gua/FloatWinService;->setRefresh()V

    .line 416
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$200(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 417
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$1000(Lzj/zfenlly/gua/FloatWinService;)V

    .line 421
    :goto_0
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string p1, "refresh"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

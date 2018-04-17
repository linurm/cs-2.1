.class Lzj/zfenlly/gua/FloatWinService$11;
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

    .line 498
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 501
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzj/zfenlly/gua/FloatWinService;->access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 503
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "start"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 504
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    .line 506
    :cond_0
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;I)V

    return-void
.end method

.class Lzj/zfenlly/gua/FloatWinService$7;
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

    .line 429
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 433
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "[ - ]"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 435
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v1, "[ + ]"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 438
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$7;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$1200(Lzj/zfenlly/gua/FloatWinService;)V

    :goto_0
    return-void
.end method

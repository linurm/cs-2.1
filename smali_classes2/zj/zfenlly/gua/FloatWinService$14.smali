.class Lzj/zfenlly/gua/FloatWinService$14;
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

    .line 541
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$14;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 544
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$14;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-virtual {p1}, Lzj/zfenlly/gua/FloatWinService;->setTimeAfter30Minites()V

    .line 545
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$14;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$1000(Lzj/zfenlly/gua/FloatWinService;)V

    .line 546
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$14;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string p1, "+30m"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
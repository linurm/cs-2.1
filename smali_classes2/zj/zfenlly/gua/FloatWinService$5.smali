.class Lzj/zfenlly/gua/FloatWinService$5;
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

    .line 396
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$5;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$5;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$5;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$5;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$1100(Lzj/zfenlly/gua/FloatWinService;)V

    :goto_0
    return-void
.end method

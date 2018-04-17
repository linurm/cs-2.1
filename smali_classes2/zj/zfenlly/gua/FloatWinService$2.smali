.class Lzj/zfenlly/gua/FloatWinService$2;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->createView(Landroid/content/Context;)V
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

    .line 280
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 283
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;

    move-result-object p1

    invoke-virtual {p1}, Lzj/zfenlly/gua/FloatView;->isbClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "click"

    const-string v0, "click"

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$200(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$400(Lzj/zfenlly/gua/FloatWinService;)V

    .line 290
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$500(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$600(Lzj/zfenlly/gua/FloatWinService;)V

    .line 292
    :cond_1
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string v0, "[ - ]"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 294
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$2;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    :cond_2
    :goto_0
    return-void
.end method

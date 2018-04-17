.class Lzj/zfenlly/gua/FloatWinService$19;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V
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

    .line 749
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 752
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 755
    :cond_0
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lzj/zfenlly/gua/FloatWinService;->access$1402(Lzj/zfenlly/gua/FloatWinService;I)I

    .line 756
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    iget-object p1, p1, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v0

    invoke-static {p1, v0}, Lzj/zfenlly/gua/TimeSetting;->setTimes(Landroid/content/Context;I)V

    .line 757
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$1500(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v1}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$1600(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$19;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p0}, Lzj/zfenlly/gua/FloatWinService;->access$1400(Lzj/zfenlly/gua/FloatWinService;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

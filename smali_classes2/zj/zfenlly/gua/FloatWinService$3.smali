.class Lzj/zfenlly/gua/FloatWinService$3;
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

    .line 363
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;

    move-result-object p1

    invoke-virtual {p1}, Lzj/zfenlly/wifi/WifiAdmin;->isWifiEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;

    move-result-object p1

    invoke-virtual {p1}, Lzj/zfenlly/wifi/WifiAdmin;->closeWifi()V

    .line 368
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string p1, "close wifi"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {p1}, Lzj/zfenlly/gua/FloatWinService;->access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;

    move-result-object p1

    invoke-virtual {p1}, Lzj/zfenlly/wifi/WifiAdmin;->openWifi()Z

    .line 371
    iget-object p0, p0, Lzj/zfenlly/gua/FloatWinService$3;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string p1, "open wifi"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

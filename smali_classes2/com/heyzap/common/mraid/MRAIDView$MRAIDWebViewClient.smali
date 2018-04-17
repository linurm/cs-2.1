.class Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/mraid/MRAIDView;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V
    .locals 0

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1295
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0, v3}, Lcom/heyzap/common/mraid/MRAIDView;->access$2802(Lcom/heyzap/common/mraid/MRAIDView;Z)Z

    .line 1299
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$400(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "interstitial"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2900(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3000(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1301
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3100(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3200(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1303
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3300(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1304
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3400(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1305
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3500(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1306
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$400(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1307
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->showAsInterstitial()V

    .line 1317
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2400(Lcom/heyzap/common/mraid/MRAIDView;)Lcom/heyzap/common/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2400(Lcom/heyzap/common/mraid/MRAIDView;)Lcom/heyzap/common/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/heyzap/common/mraid/MRAIDViewListener;->mraidViewLoaded(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2100(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$2102(Lcom/heyzap/common/mraid/MRAIDView;Z)Z

    .line 1323
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3900(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;-><init>(Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1339
    :cond_2
    return-void

    .line 1299
    :cond_3
    const-string v0, "inline"

    goto :goto_0

    .line 1309
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0, v3}, Lcom/heyzap/common/mraid/MRAIDView;->access$1002(Lcom/heyzap/common/mraid/MRAIDView;I)I

    .line 1310
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2300(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1311
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3600(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1312
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3700(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3800(Lcom/heyzap/common/mraid/MRAIDView;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1343
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1349
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v0, "mraid://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0, p2}, Lcom/heyzap/common/mraid/MRAIDView;->access$4000(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V

    .line 1355
    :goto_0
    return v3

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0, p2}, Lcom/heyzap/common/mraid/MRAIDView;->access$4100(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;


# direct methods
.method constructor <init>(Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v1, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$400(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

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

    .line 1327
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3000(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1328
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3200(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1329
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3500(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1330
    const-string v0, "MRAIDView"

    const-string v1, "calling fireStateChangeEvent 2"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2300(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1332
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3600(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1333
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3700(Lcom/heyzap/common/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$3800(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 1336
    :cond_0
    return-void

    .line 1326
    :cond_1
    const-string v0, "inline"

    goto :goto_0
.end method

.class Lcom/heyzap/common/mraid/MRAIDView$5$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/common/mraid/MRAIDView$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iput-object p2, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1400(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 559
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1500(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1500(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 562
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1500(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 563
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1700(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1602(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 564
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1600(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1800(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)V

    .line 565
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$1600(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1900(Lcom/heyzap/common/mraid/MRAIDView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$1600(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$2002(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 567
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$2102(Lcom/heyzap/common/mraid/MRAIDView;Z)Z

    .line 568
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v0, v0, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView$5$1;->this$1:Lcom/heyzap/common/mraid/MRAIDView$5;

    iget-object v1, v1, Lcom/heyzap/common/mraid/MRAIDView$5;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$2000(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->access$2200(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)V

    .line 569
    return-void
.end method

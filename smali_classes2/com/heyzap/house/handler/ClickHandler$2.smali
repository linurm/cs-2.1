.class Lcom/heyzap/house/handler/ClickHandler$2;
.super Landroid/webkit/WebViewClient;
.source "ClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/ClickHandler;->gotoMarket(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/handler/ClickHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$2;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iput-object p2, p0, Lcom/heyzap/house/handler/ClickHandler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$2;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lcom/heyzap/house/handler/ClickHandler;->access$100(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 168
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$2;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lcom/heyzap/house/handler/ClickHandler;->access$100(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 177
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

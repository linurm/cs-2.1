.class Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/mraid/MRAIDView;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    return-void
.end method

.method private handlePopups(Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 1286
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 1287
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .prologue
    .line 1256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1257
    :cond_0
    const/4 v0, 0x0

    .line 1264
    :goto_0
    return v0

    .line 1259
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uncaught ReferenceError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    const-string v1, "JS console"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1260
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 1275
    const-string v0, "JS confirm"

    invoke-static {v0, p3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0, p4}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 1281
    const-string v0, "JS prompt"

    invoke-static {v0, p3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-direct {p0, p5}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

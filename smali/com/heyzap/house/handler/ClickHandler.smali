.class public Lcom/heyzap/house/handler/ClickHandler;
.super Ljava/lang/Object;
.source "ClickHandler.java"


# instance fields
.field private marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private model:Lcom/heyzap/house/model/AdModel;


# direct methods
.method public constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/handler/ClickHandler;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/heyzap/house/handler/ClickHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "amzn"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v1, "amazon.com/gp/mas/dl/android?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    const-string v1, "android?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amzn://apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {p0, p1, v1}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "market"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v1, "play.google"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const-string v1, "details?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 131
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-direct {p0, p1, v1}, Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    const/high16 v0, 0x20000

    .line 78
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 79
    const/high16 v0, 0x10020000

    .line 82
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "The Appstore cannot be found."

    .line 95
    :goto_1
    const-string v0, "Market not found, cannot install"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    const-string v1, "(LAUNCH MARKET FAILED)"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_2
    :try_start_2
    const-string v0, "The Play Store cannot be found."
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public doClick(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->model:Lcom/heyzap/house/model/AdModel;

    iget-object v0, v0, Lcom/heyzap/house/model/AdModel;->actionUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/heyzap/house/handler/ClickHandler$1;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method protected gotoMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 147
    .line 148
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->launchIfMarket(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/house/handler/ClickHandler$2;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 191
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 192
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 194
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 196
    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/heyzap/house/handler/ClickHandler$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/heyzap/house/handler/ClickHandler$3;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    sget-object v1, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/heyzap/house/handler/ClickHandler$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/heyzap/house/handler/ClickHandler$4;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 v4, 0x2ee

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    sget-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler$5;-><init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x4e2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

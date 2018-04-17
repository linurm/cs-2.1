.class public Lrrrrrr/rrccrr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "rrccrr"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ValidateURL"


# instance fields
.field private b:Ljava/net/URL;

.field public final synthetic b0427Ч0427ЧЧ0427:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iput-object p1, p0, Lrrrrrr/rrccrr;->b0427Ч0427ЧЧ0427:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lrrrrrr/rrccrr;->b:Ljava/net/URL;

    return-void
.end method

.method private a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrrrrrr/rrccrr;->b0427Ч0427ЧЧ0427:Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;->bъ044A044Aъ044Aъ(Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;I)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v1, 0x1f4

    :try_start_0
    iget-object v0, p0, Lrrrrrr/rrccrr;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0, v0}, Lrrrrrr/rrccrr;->a(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ValidateURL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lrrrrrr/rrccrr;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lrrrrrr/rrccrr;->a(I)V

    throw v0
.end method

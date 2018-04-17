.class public Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrrrrrr/ccrcrr;,
        Lrrrrrr/rccrrr;
    }
.end annotation


# static fields
.field private static final D:J = 0x64L

.field private static final E:I = 0x5

.field public static final HAPTIC_BYTES_AVAILABLE_TO_DOWNLOAD:I = 0x3

.field public static final HAPTIC_DOWNLOAD_ERROR:I = 0x8

.field public static final HAPTIC_DOWNLOAD_EXCEPTION_KEY:Ljava/lang/String; = "haptic_download_exception"

.field public static final HAPTIC_PAUSE_PLAYBACK:I = 0x5

.field public static final HAPTIC_PLAYBACK_FOR_TIME_CODE:I = 0x2

.field public static final HAPTIC_PLAYBACK_IS_READY:I = 0x6

.field public static final HAPTIC_QUIT_PLAYBACK:I = 0x9

.field public static final HAPTIC_SET_BUFFERING_POSITION:I = 0x1

.field public static final HAPTIC_STOP_PLAYBACK:I = 0x4

.field public static final PAUSE_AV_FOR_HAPTIC_BUFFERING:I = 0x7

.field private static final a:Ljava/lang/String; = "HapticPlaybackThread"

.field private static final b:I = -0x80000000

.field private static final c:Ljava/lang/String; = "playback_timecode"

.field private static final d:Ljava/lang/String; = "playback_uptime"


# instance fields
.field private A:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

.field private B:Z

.field private C:Lcom/immersion/hapticmediasdk/utils/FileManager;

.field private final F:Ljava/lang/Runnable;

.field private final G:Ljava/lang/Runnable;

.field public volatile b0415ЕЕ0415Е0415:Z

.field public volatile bЕ0415Е0415Е0415:Z

.field public bЕЕЕ0415Е0415:Landroid/content/Context;

.field private e:I

.field private final f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

.field private j:Landroid/os/Looper;

.field private k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

.field private l:Lcom/immersion/content/EndpointWarp;

.field private final m:Lcom/immersion/hapticmediasdk/utils/Profiler;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:I

.field private v:I

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/utils/RuntimeInfo;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "HapticPlaybackThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e:I

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->o:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->x:Z

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕ0415Е0415Е0415:Z

    iput-boolean v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->B:Z

    new-instance v0, Lrrrrrr/rrcrrr;

    invoke-direct {v0, p0}, Lrrrrrr/rrcrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->F:Ljava/lang/Runnable;

    new-instance v0, Lrrrrrr/crcrrr;

    invoke-direct {v0, p0}, Lrrrrrr/crcrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->G:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕЕЕ0415Е0415:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->B:Z

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/utils/FileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->C:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iput-object p5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->A:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->z:Ljava/util/ArrayList;

    return-void
.end method

.method private a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->terminate()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IJ)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    invoke-interface {v0}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->getEncryptedHapticHeader()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HapticPlaybackThread"

    const-string v1, "corrupted hapt file or unsupported format"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HapticPlaybackThread"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/immersion/content/EndpointWarp;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕЕЕ0415Е0415:Landroid/content/Context;

    array-length v3, v0

    invoke-direct {v1, v2, v0, v3}, Lcom/immersion/content/EndpointWarp;-><init>(Landroid/content/Context;[BI)V

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    if-nez v0, :cond_2

    const-string v0, "HapticPlaybackThread"

    const-string v1, "Error creating endpointwarp"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->start()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕ0415Е0415Е0415:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    iput v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->w:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->w:J

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide p2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->s:J

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->x:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->a()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    :cond_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->j:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->j:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->j:Landroid/os/Looper;

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    invoke-interface {v0}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->close()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->stop()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->dispose()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    :cond_3
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->C:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/FileManager;->deleteHapticStorage()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic b04460446044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->a(IJ)V

    return-void
.end method

.method public static synthetic b0446044604460446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/content/EndpointWarp;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    return-object v0
.end method

.method public static synthetic b044604460446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g()V

    return-void
.end method

.method public static synthetic b04460446ц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->p:I

    return p1
.end method

.method public static synthetic b04460446ц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    return v0
.end method

.method public static synthetic b04460446цц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    return v0
.end method

.method public static synthetic b04460446ццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/utils/FileManager;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->C:Lcom/immersion/hapticmediasdk/utils/FileManager;

    return-object v0
.end method

.method public static synthetic b0446ц044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->r:I

    return p1
.end method

.method public static synthetic b0446ц04460446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b0446ц0446ц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->G:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic b0446ц0446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e:I

    return p1
.end method

.method public static synthetic b0446цц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->F:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic b0446цц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e()V

    return-void
.end method

.method public static synthetic b0446ццц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    return v0
.end method

.method public static synthetic b0446цццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;
    .locals 0

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    return-object p1
.end method

.method public static synthetic bц0446044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->d()V

    return-void
.end method

.method public static synthetic bц044604460446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->A:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    return-object v0
.end method

.method public static synthetic bц04460446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->f()V

    return-void
.end method

.method public static synthetic bц0446ц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic bц0446ц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h()V

    return-void
.end method

.method public static synthetic bц0446цц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    return p1
.end method

.method public static synthetic bц0446ццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic bцц044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->q:I

    return p1
.end method

.method public static synthetic bцц04460446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic bцц0446ц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;J)J
    .locals 1

    iput-wide p1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->w:J

    return-wide p1
.end method

.method public static synthetic bцц0446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e:I

    return v0
.end method

.method public static synthetic bццц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->a(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic bцццц04460446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    return-object v0
.end method

.method private c()V
    .locals 1

    monitor-enter p0

    :try_start_0
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

.method private d()V
    .locals 8

    const-wide/16 v6, 0x64

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->x:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    const/4 v2, 0x7

    iget v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->p:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    iget v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->p:I

    invoke-interface {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->bufferAtPlaybackPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->q:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    const/4 v2, 0x6

    iget v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->p:I

    iget v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->q:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->c()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HapticPlaybackThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->c()V

    throw v0
.end method

.method private f()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->l:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->removePlaybackCallbacks()V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->w:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    iput-wide v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->s:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕ0415Е0415Е0415:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->removePlaybackCallbacks()V

    return-void
.end method

.method private h()V
    .locals 12

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iget v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    invoke-interface {v0, v2}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->getBufferForPlaybackPosition(I)[B

    move-result-object v6

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    int-to-long v8, v2

    invoke-interface {v0, v8, v9}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->getHapticBlockIndex(J)I

    move-result v7

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->k:Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    int-to-long v8, v2

    invoke-interface {v0, v8, v9}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->getBlockOffset(J)J
    :try_end_1
    .catch Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    if-eqz v6, :cond_1

    iget-wide v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->s:J

    iget v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    int-to-long v10, v3

    add-long/2addr v10, v0

    new-instance v0, Lrrrrrr/ccrcrr;

    int-to-long v2, v2

    int-to-long v4, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lrrrrrr/ccrcrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;JJ[BIJ)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e:I

    int-to-long v2, v2

    add-long/2addr v2, v10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    iget v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;->startTimingII()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->h:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_5
    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->v:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->s:J

    iput-boolean v5, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->y:Z

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bЕ0415Е0415Е0415:Z

    return v0
.end method

.method public pauseHapticPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public playHapticForPlaybackPosition(IJ)V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->removePlaybackCallbacks()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playback_timecode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "playback_uptime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public prepareHapticPlayback(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public quitHapticPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->c()V

    :cond_0
    return-void
.end method

.method public removePlaybackCallbacks()V
    .locals 4

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrrrrrr/ccrcrr;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->j:Landroid/os/Looper;

    new-instance v0, Lrrrrrr/rccrrr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrrrrrr/rccrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Lrrrrrr/rrcrrr;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    new-instance v0, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->B:Z

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->C:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/utils/FileManager;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->i:Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticDownloadThread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0415ЕЕ0415Е0415:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->c()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public stopHapticPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public syncUpdate(IJ)V
    .locals 8

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    sub-long v6, v2, p2

    add-long/2addr v4, v6

    long-to-int v0, v4

    iget v4, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iget-wide v6, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->w:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    add-int/2addr v2, v4

    sub-int v2, v0, v2

    const/16 v3, 0x32

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iget v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->u:I

    iput v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->t:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->g:Landroid/os/Handler;

    const/4 v4, 0x1

    const/high16 v5, -0x80000000

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

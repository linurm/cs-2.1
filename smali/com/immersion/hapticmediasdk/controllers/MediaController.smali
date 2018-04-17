.class public Lcom/immersion/hapticmediasdk/controllers/MediaController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrrrrrr/crrrrr;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MediaController"

.field private static final b:I = 0x3e8

.field private static final c:I = 0xc8


# instance fields
.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Landroid/os/Handler;

.field private g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

.field private h:Lcom/immersion/hapticmediasdk/utils/Profiler;

.field private i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/immersion/hapticmediasdk/MediaTaskManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->h:Lcom/immersion/hapticmediasdk/utils/Profiler;

    new-instance v0, Lrrrrrr/rcrrrr;

    invoke-direct {v0, p0}, Lrrrrrr/rcrrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/MediaController;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    new-instance v0, Lrrrrrr/crrrrr;

    invoke-direct {v0, p0, p1}, Lrrrrrr/crrrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/MediaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->f:Landroid/os/Handler;

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->pauseHapticPlayback()V

    const/4 v0, 0x0

    return v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    return-void
.end method

.method private a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->playHapticForPlaybackPosition(IJ)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "haptic_download_exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    instance-of v1, v0, Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;

    const-string v2, "MediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught HttpUnsuccessfulExcetion http status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HttpUnsuccessfulException;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticDownloadError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->isStarted()Z

    move-result v0

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->isStarted()Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic b044A044Aъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a(IJ)V

    return-void
.end method

.method public static synthetic b044Aъ044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic b044Aъъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic bц04460446044604460446(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic bъ044A044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    return-object v0
.end method

.method public static synthetic bъ044Aъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/MediaTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    return-object v0
.end method

.method public static synthetic bъъ044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a(I)V

    return-void
.end method


# virtual methods
.method public getControlHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->getMediaTimestamp()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getReferenceTimeForCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->getMediaReferenceTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initHapticPlayback(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 1

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a(Z)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->quitHapticPlayback()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->i:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()I
    .locals 1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->a()I

    move-result v0

    return v0
.end method

.method public onPrepared()I
    .locals 1

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->prepareHapticPlayback()I

    move-result v0

    return v0
.end method

.method public playbackStarted()V
    .locals 4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MediaController"

    const-string v1, "Can\'t start periodic sync since haptic playback thread stopped."

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareHapticPlayback()I
    .locals 3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->h:Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;->startTiming()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->prepareHapticPlayback(II)V

    const/4 v0, 0x0

    return v0
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    if-lez p1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->removePlaybackCallbacks()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setRequestBufferPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public stopHapticPlayback()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->stopHapticPlayback()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return v2
.end method

.method public waitHapticStopped()V
    .locals 6

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->isStopped()Z

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MediaController;->g:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->isStopped()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

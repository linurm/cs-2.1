.class public abstract Lcom/immersion/hapticmediasdk/HapticContentSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
    }
.end annotation


# static fields
.field public static final INACCESSIBLE_URL:I = -0x2

.field public static final INVALID:I = -0x1

.field public static final MALFORMED_URL:I = -0x4

.field public static final PERMISSION_DENIED:I = -0x3

.field public static final SDKMODE_MEDIAPLAYBACK:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final UNSUPPORTED_PROTOCOL:I = -0x5

.field private static final a:Ljava/lang/String; = "HapticContentSDK"

.field public static final b0415ЕЕ041504150415:I = 0x2710

.field public static final bЕЕЕ041504150415:I = 0x5dc


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

.field public mDisposed:Z

.field public mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

.field public mSDKStatus:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mSDKStatus:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mDisposed:Z

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->d:Landroid/content/Context;

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->e:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    return-void
.end method


# virtual methods
.method public bц04460446ц04460446()I
    .locals 4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SDK Monitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->c:Landroid/os/Handler;

    new-instance v0, Lcom/immersion/hapticmediasdk/MediaTaskManager;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->e:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/immersion/hapticmediasdk/MediaTaskManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "HapticContentSDK"

    const-string v1, "Failed to create a Haptic Content SDK instance.Vibrate permission denied."

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    goto :goto_0
.end method

.method public final dispose()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->b:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mDisposed:Z

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mDisposed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v2.0.68.12"

    return-object v0
.end method

.method public final mute()I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->e:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;->mute()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract openHaptics(Ljava/lang/String;)I
.end method

.method public final pause()I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    move-result v0

    goto :goto_0
.end method

.method public final play()I
    .locals 4

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->setMediaTimestamp(J)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final resume()I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->setMediaReferenceTime()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final seek(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED_DUE_TO_ERROR:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0, p1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->SeekTo(I)I

    move-result v0

    goto :goto_0
.end method

.method public final stop()I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->NOT_INITIALIZED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->STOPPED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    move-result v0

    goto :goto_0
.end method

.method public final unmute()I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->DISPOSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->e:Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/RuntimeInfo;->unmute()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final update(J)I
    .locals 3

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_TIMEOUT:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->setMediaTimestamp(J)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/HapticContentSDK;->mMediaTaskManager:Lcom/immersion/hapticmediasdk/MediaTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->setMediaTimestamp(J)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

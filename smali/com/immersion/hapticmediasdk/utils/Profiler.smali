.class public Lcom/immersion/hapticmediasdk/utils/Profiler;
.super Ljava/lang/Object;


# instance fields
.field public mStartTime:J

.field public mStartTimeII:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/utils/Profiler;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationII()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/utils/Profiler;->mStartTimeII:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public startTiming()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/utils/Profiler;->mStartTime:J

    return-void
.end method

.method public startTimingII()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/utils/Profiler;->mStartTimeII:J

    return-void
.end method

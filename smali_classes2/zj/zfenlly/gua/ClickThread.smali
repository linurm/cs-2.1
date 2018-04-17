.class public Lzj/zfenlly/gua/ClickThread;
.super Ljava/lang/Thread;
.source "ClickThread.java"


# instance fields
.field downTime:J

.field eventTime:J

.field interval:I

.field isStart:Z

.field private mContext:Landroid/content/Context;

.field private mCoordinateView:Lzj/zfenlly/gua/Coordinate;

.field public mHandler:Landroid/os/Handler;

.field mInst:Landroid/app/Instrumentation;

.field times:I

.field x_zb:I

.field y_zb:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 38
    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    const/16 p1, 0x64

    .line 41
    iput p1, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    .line 42
    new-instance p1, Lzj/zfenlly/gua/Coordinate;

    invoke-direct {p1, p2, p3}, Lzj/zfenlly/gua/Coordinate;-><init>(II)V

    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lzj/zfenlly/gua/Coordinate;II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 30
    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    .line 32
    iput p4, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    .line 33
    iput p5, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    .line 34
    iput-object p3, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 60
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    :cond_0
    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-eqz v1, :cond_4

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    .line 67
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v1, v1, Lzj/zfenlly/gua/Coordinate;->x:I

    iput v1, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    .line 69
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v1, v1, Lzj/zfenlly/gua/Coordinate;->y:I

    iput v1, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    .line 71
    :cond_1
    iget-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    iget-wide v5, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    const/4 v7, 0x0

    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    int-to-float v8, v1

    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 72
    iget-object v3, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    monitor-enter p0

    const-wide/16 v3, 0xc8

    .line 77
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v1

    .line 80
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    iget-boolean v1, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-nez v1, :cond_2

    goto :goto_5

    .line 85
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    .line 87
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v1, v1, Lzj/zfenlly/gua/Coordinate;->x:I

    iput v1, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    .line 89
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v1, v1, Lzj/zfenlly/gua/Coordinate;->y:I

    iput v1, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    .line 91
    :cond_3
    iget-wide v3, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    iget-wide v5, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    const/4 v7, 0x1

    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    int-to-float v8, v1

    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 92
    iget-object v3, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-string v1, "ZTAG"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send pointersync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_1
    monitor-enter p0

    .line 104
    :try_start_4
    iget v1, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    .line 107
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 109
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    iget-boolean v1, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-nez v1, :cond_0

    goto :goto_5

    .line 109
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 82
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_4
    :goto_5
    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 113
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 114
    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method

.method public setTempTimes(I)V
    .locals 0

    .line 47
    iput p1, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 52
    invoke-virtual {p0}, Lzj/zfenlly/gua/ClickThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lzj/zfenlly/gua/ClickThread;->interrupt()V

    :cond_0
    return-void
.end method

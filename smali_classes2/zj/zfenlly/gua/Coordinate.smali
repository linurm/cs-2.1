.class public Lzj/zfenlly/gua/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x550

    .line 17
    iput v0, p0, Lzj/zfenlly/gua/Coordinate;->x:I

    const/16 v0, 0x3e4

    .line 18
    iput v0, p0, Lzj/zfenlly/gua/Coordinate;->y:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lzj/zfenlly/gua/Coordinate;->x:I

    .line 14
    iput p2, p0, Lzj/zfenlly/gua/Coordinate;->y:I

    return-void
.end method

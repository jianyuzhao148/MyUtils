.class public Lorg/spongycastle/asn1/ASN1ParsingException;
.super Ljava/lang/IllegalStateException;
.source "ASN1ParsingException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lorg/spongycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

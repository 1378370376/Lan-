package ssm.bean;

public class Traderecord {
    @Override
	public String toString() {
		return "Traderecord [id=" + id + ", otheraccount=" + otheraccount + ", transactionAmount=" + transactionAmount
				+ ", tradetyp=" + tradetyp + ", tradeTime=" + tradeTime + ", userid=" + userid + "]";
	}

	/**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.id
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.OtherAccount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private String otheraccount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.transaction_amount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private Double transactionAmount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.tradeTyp
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private String tradetyp;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.trade_time
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private String tradeTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column traderecord.userid
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    private Integer userid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.id
     *
     * @return the value of traderecord.id
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public Integer getId() {
        return id;
    }

    public Traderecord(String otheraccount, Double transactionAmount, String tradetyp, String tradeTime,
			Integer userid) {
		super();
		this.otheraccount = otheraccount;
		this.transactionAmount = transactionAmount;
		this.tradetyp = tradetyp;
		this.tradeTime = tradeTime;
		this.userid = userid;
	}

	public Traderecord() {
		super();
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.id
     *
     * @param id the value for traderecord.id
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.OtherAccount
     *
     * @return the value of traderecord.OtherAccount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public String getOtheraccount() {
        return otheraccount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.OtherAccount
     *
     * @param otheraccount the value for traderecord.OtherAccount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setOtheraccount(String otheraccount) {
        this.otheraccount = otheraccount == null ? null : otheraccount.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.transaction_amount
     *
     * @return the value of traderecord.transaction_amount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public Double getTransactionAmount() {
        return transactionAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.transaction_amount
     *
     * @param transactionAmount the value for traderecord.transaction_amount
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setTransactionAmount(Double transactionAmount) {
        this.transactionAmount = transactionAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.tradeTyp
     *
     * @return the value of traderecord.tradeTyp
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public String getTradetyp() {
        return tradetyp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.tradeTyp
     *
     * @param tradetyp the value for traderecord.tradeTyp
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setTradetyp(String tradetyp) {
        this.tradetyp = tradetyp == null ? null : tradetyp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.trade_time
     *
     * @return the value of traderecord.trade_time
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public String getTradeTime() {
        return tradeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.trade_time
     *
     * @param tradeTime the value for traderecord.trade_time
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setTradeTime(String tradeTime) {
        this.tradeTime = tradeTime == null ? null : tradeTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column traderecord.userid
     *
     * @return the value of traderecord.userid
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column traderecord.userid
     *
     * @param userid the value for traderecord.userid
     *
     * @mbg.generated Fri Oct 16 20:56:40 CST 2020
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}
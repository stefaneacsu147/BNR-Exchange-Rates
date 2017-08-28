package com.ntt.bnr.exchange.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: CurrencyExchangeObjectModel
 *
 */
@Entity

public class CurrencyExchangeObjectModel implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id", updatable = false, nullable = false)
	private Long id;
	
	@Lob
	private String xmlData;
	
	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	private Date creationDate;
	
	

	public CurrencyExchangeObjectModel() {
		super();
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getXmlData() {
		return xmlData;
	}



	public void setXmlData(String xmlData) {
		this.xmlData = xmlData;
	}



	public Date getCreationDate() {
		return creationDate;
	}



	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
   
}
